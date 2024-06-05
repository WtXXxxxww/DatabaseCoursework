import java.io.PrintWriter;
import java.sql.*;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

// this is the class through which all Database calls go

/**
 * This class is used to interact with the database and perform various operations.
 * It extends the DbBasic class, which provides the basic functionality for interacting with the database.
 */
//后续任务： Unique not null，结果写到SQL文件里, Northwind里面的view，UI
public class DbUser extends DbBasic {

	private PrintWriter writer;

	/*
	 * Creates a connection to the named database
	 */
	DbUser ( String dbName, PrintWriter writer ) {
		super( dbName );
		this.writer = writer;
	}


	//Gets the database details - name, version, URL, username
	/**
	 * This method is used to get and print the details of the database.
	 * It retrieves the metadata of the database connection and then calls two helper methods
	 * to print the information about the database and the data types it supports.
	 *
	 * It uses the DatabaseMetaData object, which is part of the java.sql package.
	 * This object can provide comprehensive information about the database as a whole.
	 *
	 * The method handles SQLException that might occur during the interaction with the database.
	 * If an exception occurs, it prints the stack trace to the standard error stream.
	 */
	public void getDatabaseDetails() {
		try {
			// Get metadata from the database connection
			DatabaseMetaData md = con.getMetaData();

			writer.println();
			writer.println("/*-----Database Details------------------------*/");

			// Call helper method to print general database information
			printDatabaseInfo(md);

			// Call helper method to print supported data types of the database
			printSupportedDataTypes(md);
		} catch (SQLException e) {
			// Print the stack trace for debugging if a SQLException occurs
			e.printStackTrace();
		}
	}

	/**
	 * This method is used to print the details of the database connection.
	 * It retrieves the metadata of the database connection and then prints the driver name, driver version, URL, and username.
	 *
	 * @param md The DatabaseMetaData object from which the database connection details are retrieved.
	 * @throws SQLException If a database access error occurs.
	 */
	private void printDatabaseInfo(DatabaseMetaData md) throws SQLException {
		writer.printf("-- Driver Name: %s%n", md.getDriverName());
		writer.printf("-- Driver Version: %s%n", md.getDriverVersion());
		writer.printf("-- URL: %s%n", md.getURL());
		writer.printf("-- User Name: %s%n", md.getUserName());
	}

	/**
	 * This method is used to print the supported data types of the database.
	 * It retrieves the metadata of the database connection and then prints the name of each supported data type.
	 *
	 * @param md The DatabaseMetaData object from which the supported data types are retrieved.
	 * @throws SQLException If a database access error occurs.
	 */
	private void printSupportedDataTypes(DatabaseMetaData md) throws SQLException {
		ResultSet rs = md.getTypeInfo();
		while (rs.next()) {
			writer.printf("-- Supported Type: %s%n", rs.getString("TYPE_NAME"));
		}
	}

	//MilestoneA+B: get INSERT INTO STATEMENTS from a DB
	/**
	 * This method is used to generate and print the SQL INSERT statements for all tables in the database.
	 * It retrieves the metadata of the database connection and then iterates over each table.
	 * If the table exists and its name does not start with "sqlite_autoindex_", it calls the getInsertStatements method for that table.
	 *
	 * The method handles SQLException that might occur during the interaction with the database.
	 * If an exception occurs, it prints the stack trace to the standard error stream.
	 */
	public void getInsertStatementsForAllTables() {
		try {
			writer.println();
			writer.println("/*-----Insert Statements------------------------*/ ");
			String[] types = {"TABLE"};
			DatabaseMetaData md = con.getMetaData();
			ResultSet rs = md.getTables(null, null, "%", types);
			while (rs.next()) {
				String tableName = rs.getString(3);
				if (tableExists(tableName) && !tableName.startsWith("sqlite_autoindex_")) {
					getInsertStatements(tableName);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * This method checks if a table exists in the database.
	 *
	 * @param tableName The name of the table to check.
	 * @return true if the table exists, false otherwise.
	 * @throws SQLException If a database access error occurs.
	 */
	private boolean tableExists(String tableName) throws SQLException {
		DatabaseMetaData md = con.getMetaData();
		ResultSet rs = md.getTables(null, null, tableName, null);
		return rs.next();
	}

	/**
	 * This method is used to generate and print the SQL INSERT statements for a specific table in the database.
	 * It retrieves the metadata of the database connection and then iterates over each row in the table.
	 * For each row, it constructs an SQL INSERT statement, taking into account the specific data type of each column.
	 * If the data type of a column is VARCHAR or CHAR, it adds single quotes around the value.
	 *
	 * The method handles SQLException that might occur during the interaction with the database.
	 * If an exception occurs, it prints the stack trace to the standard error stream.
	 *
	 * 如果列的类型是VARCHAR或CHAR，我们就获取列的值，并将单引号替换为两个单引号。
	 * 如果列的类型是BLOB，我们就获取列的值（作为字节数组），然后使用Base64编码将其转换为字符串。
	 * 如果列的类型既不是VARCHAR或CHAR，也不是BLOB，我们就直接获取列的值。
	 * @param tabName The name of the table for which to generate SQL INSERT statements.
	 */
	public void getInsertStatements(String tabName) {
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM " + tabName);
			ResultSetMetaData rsmd = rs.getMetaData();
			int columnCount = rsmd.getColumnCount();
			while (rs.next()) {
				StringBuilder sb = new StringBuilder();
				sb.append("INSERT INTO ");
				sb.append(tabName);
				sb.append(" VALUES (");
				for (int i = 1; i <= columnCount; i++) {
					String value;
					if (rsmd.getColumnType(i) == Types.VARCHAR || rsmd.getColumnType(i) == Types.CHAR) {
						value = "'" + rs.getString(i).replace("'", "''") + "'";  // replace single quote with two single quotes
					} else if (rsmd.getColumnType(i) == Types.BLOB) {
						byte[] bytes = rs.getBytes(i);
						value = "'" + Base64.getEncoder().encodeToString(bytes) + "'";
					} else {
						value = rs.getString(i);
					}
					sb.append(value);
					if (i < columnCount) {
						sb.append(", ");
					}
				}
				sb.append(");");
				writer.println(sb.toString());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	//MilestoneC+D+E: get CREATE TABLE STATEMENTS from a DB
	/**
	 * This method is used to generate and print the SQL CREATE TABLE statements for all tables in the database.
	 * It retrieves the metadata of the database connection and then iterates over each table.
	 * If the table exists and its name does not start with "sqlite_autoindex_", it calls the getCreateTableStatements method for that table.
	 *
	 * The method handles SQLException that might occur during the interaction with the database.
	 * If an exception occurs, it prints the stack trace to the standard error stream.
	 */
	public void getCreateTableStatementsForAllTables() {
		try {
			writer.println();
			writer.println("/*-----Create Table Statements------------------------*/ ");
			String[] types = {"TABLE"};
			DatabaseMetaData md = con.getMetaData();
			ResultSet rs = md.getTables(null, null, "%", types);
			while (rs.next()) {
				String tableName = rs.getString(3);
				if (tableExists(tableName) && !tableName.startsWith("sqlite_autoindex_")) {
					getCreateTableStatements(tableName);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * This method is used to generate and print the SQL CREATE TABLE statement for a specific table in the database.
	 * It retrieves the metadata of the database connection and then iterates over each column in the table.
	 * For each column, it retrieves the column name and data type, and appends them to the CREATE TABLE statement.
	 * It also includes the primary key and foreign key constraints in the CREATE TABLE statement.
	 *
	 * The method handles SQLException that might occur during the interaction with the database.
	 * If an exception occurs, it prints the stack trace to the standard error stream.
	 *
	 * @param tabName The name of the table for which to generate SQL CREATE TABLE statement.
	 */
	public void getCreateTableStatements(String tabName) {
		StringBuilder sb = new StringBuilder();
		try {
			DatabaseMetaData md = con.getMetaData();
			ResultSet rs = md.getColumns(null, null, tabName, null);
			sb.append("DROP TABLE IF EXISTS ").append(tabName).append(";\n");
			sb.append("CREATE TABLE IF NOT EXISTS ").append(tabName).append(" (\n");

			while (rs.next()) {
				String column = rs.getString("COLUMN_NAME");
				String type = rs.getString("TYPE_NAME");
				int nullable = rs.getInt("NULLABLE");

				sb.append("     ").append(column).append(" ").append(type);

				if (nullable == ResultSetMetaData.columnNoNulls) {
					sb.append(" NOT NULL");
				}

				sb.append(",\n");
			}

			sb.append(getPrimaryKeys(tabName));
			sb.append(getForeignKeys(tabName));
			sb.append("\n);\n");
		} catch (Exception e) {
			e.printStackTrace();
		}
		writer.println(sb.toString());
	}

	/**
	 * This method is used to generate and return the primary key constraint for a specific table in the database.
	 * It retrieves the primary key columns for the table and constructs the PRIMARY KEY constraint.
	 *
	 * @param tabName The name of the table for which to generate the primary key constraint.
	 * @return The primary key constraint as a String.
	 */
	public String getPrimaryKeys(String tabName) {
		StringBuilder sb = new StringBuilder();
		try {
			DatabaseMetaData md = con.getMetaData();
			sb.append("     PRIMARY KEY (");
			ResultSet primaryKeys = md.getPrimaryKeys(null, null, tabName);
			while (primaryKeys.next()) {
				sb.append(primaryKeys.getString("COLUMN_NAME")).append(", ");
			}
			sb.setLength(sb.length() - 2);  // remove last comma
			sb.append(")");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sb.toString();
	}

	/**
	 * This method is used to generate and return the foreign key constraints for a specific table in the database.
	 * It retrieves the foreign key columns for the table and constructs the FOREIGN KEY constraints.
	 *
	 * @param tabName The name of the table for which to generate the foreign key constraints.
	 * @return The foreign key constraints as a String.
	 */
	public String getForeignKeys(String tabName) {
		StringBuilder sb = new StringBuilder();
		try {
			DatabaseMetaData meta = con.getMetaData();
			ResultSet rs = meta.getImportedKeys(null, null, tabName);
			while (rs.next()) {
				String foreignColumnName = rs.getString("FKCOLUMN_NAME");
				String primaryTableName = rs.getString("PKTABLE_NAME");
				String primaryColumnName = rs.getString("PKCOLUMN_NAME");
				sb.append(",\n     FOREIGN KEY (").append(foreignColumnName).append(") REFERENCES ")
						.append(primaryTableName).append("(").append(primaryColumnName).append(")");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sb.toString();
	}

	//MileStone F: Get CREATE INDEX statements

	/**
	 * This method is used to generate and print the SQL CREATE INDEX statements for all tables in the database.
	 * It retrieves the metadata of the database connection and then iterates over each table.
	 * If the table exists and its name does not start with "sqlite_autoindex_", it calls the getCreateIndexStatements method for that table.
	 *
	 * The method handles SQLException that might occur during the interaction with the database.
	 * If an exception occurs, it prints the stack trace to the standard error stream.
	 */
	public void getCreateIndexStatementsForAllTables() {
		try {
			writer.println();
			writer.println("/*-----Create Index Statements------------------------*/ ");
			String[] types = {"TABLE"};
			DatabaseMetaData md = con.getMetaData();
			ResultSet rs = md.getTables(null, null, "%", types);
			while (rs.next()) {
				String tableName = rs.getString(3);
				if (tableExists(tableName) && !tableName.startsWith("sqlite_autoindex_")) {
					getCreateIndexStatements(tableName);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * This method is used to generate and print the SQL CREATE INDEX statements for a specific table in the database.
	 * It retrieves the metadata of the database connection and then iterates over each index associated with the table.
	 * For each index, it constructs an SQL CREATE INDEX statement with the index name, column name, and sort order.
	 *
	 * The method handles SQLException that might occur during the interaction with the database.
	 * If an exception occurs, it prints the stack trace to the standard error stream.
	 * 这段代码会检查索引名称是否已经在indexNames这个HashMap中。如果已经存在，那么就在索引名称后面添加列的名称。这样就可以避免创建同名的索引了。
	 *
	 * @param tabName The name of the table for which to generate SQL CREATE INDEX statements.
	 */
	public void getCreateIndexStatements(String tabName) {
		try {
			DatabaseMetaData md = con.getMetaData();
			ResultSet rs = md.getIndexInfo(null, null, tabName, false, false);
			HashMap<String, String> indexNames = new HashMap<>();
			while (rs.next()) {
				String indexName = rs.getString("INDEX_NAME");
				String columnName = rs.getString("COLUMN_NAME");
				if (indexName != null) {
					if (indexName.startsWith("sqlite_autoindex_")) {
						indexName = indexName.substring("sqlite_autoindex_".length());
					}
					if (indexNames.containsKey(indexName)) {
						indexName += "_" + columnName;
					}
					indexNames.put(indexName, columnName);
					String ascOrDesc = rs.getString("ASC_OR_DESC");
					String sortOrder = ascOrDesc != null && ascOrDesc.equals("A") ? "ASC" : "DESC";
					writer.println("CREATE INDEX " + indexName + " ON " + tabName + " (" + columnName + " " + sortOrder + ");");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/*MileStone G: If the database structure is modified after creation it is possible for tables to be returned in an
	order that would break key constraints */

	/**
	 * This method is used to generate and print the SQL CREATE TABLE statements for all tables in the database in a sorted order.
	 * It retrieves the metadata of the database connection and then iterates over each table.
	 * If the table exists and its name does not start with "sqlite_autoindex_", it adds the table and its primary key dependencies to a TableDependencySorter.
	 * After processing all tables, it calls the sortTables method of the TableDependencySorter to get a sorted list of tables.
	 * For each table in the sorted list, it calls the getCreateTableStatements method to generate the SQL CREATE TABLE statement.
	 *
	 * The method handles SQLException that might occur during the interaction with the database.
	 * If an exception occurs, it prints the stack trace to the standard error stream.
	 */
	public void getSortedTableStatementsForAllTables() {
		try {
			writer.println();
			writer.println("/*-----Create Sorted Table Statements------------------------*/ ");
			DatabaseMetaData md = con.getMetaData();
			ResultSet rs = md.getTables(null, null, "%", null);
			TableDependencySorter sorter = new TableDependencySorter();
			while (rs.next()) {
				String tableName = rs.getString(3);
				if (tableExists(tableName) && !tableName.startsWith("sqlite_autoindex_")) {
					ResultSet fk = md.getImportedKeys(null, null, tableName);
					if (!fk.next()) {
						getCreateTableStatements(tableName);
					} else {
						do {
							String primaryTableName = fk.getString("PKTABLE_NAME");
							sorter.addDependency(tableName, primaryTableName);
						} while (fk.next());
					}
				}
			}
			List<String> sortedTables = sorter.sortTables();
			for (String tableName : sortedTables) {
				getCreateTableStatements(tableName);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}


