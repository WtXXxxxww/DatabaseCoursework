import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.swing.SwingUtilities;

public class Main {

	DbUser myDbUser = null;


	public void go(String inputDbPath, String databaseName)
	{
		String lecName = null;
		PrintWriter writer = null;
		System.out.println("In go...");

		try {
			writer = new PrintWriter("output.sql");
			myDbUser = new DbUser("TargetDatabases\\" + inputDbPath +".db",writer);

			//display the database details
			myDbUser.getDatabaseDetails();

			//get the sorted create table statements

			//myDbUser.getCreateTableStatementsForAllTables(); 没有遵守外键约束
			myDbUser.getSortedTableStatementsForAllTables();

			//get the insert statements
			myDbUser.getInsertStatementsForAllTables();

			//get the all indexes
			myDbUser.getCreateIndexStatementsForAllTables();

			writer.close();
		} catch (FileNotFoundException e) {
			throw new RuntimeException(e);
		}

		//从上面的output文件中读取SQL代码，重新创建数据库
		try {
			// 读取 SQL 文件
			String sqlCommands = new String(Files.readAllBytes(Paths.get("output.sql")));

			// 分割 SQL 命令
			String[] commands = sqlCommands.split(";\n");

			// 创建数据库连接
			Connection conn = DriverManager.getConnection("jdbc:sqlite:Results\\"+ databaseName + ".db");

			// 创建 Statement 对象
			Statement stmt = conn.createStatement();

			// 执行每个 SQL 命令
			for (String command : commands) {
				if (command != null && !command.trim().isEmpty() && !conn.isClosed()) {
					stmt.execute(command);
				}
			}

			// 关闭连接
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}


		myDbUser.close();
		System.out.println("Finished...");
	}; // end of method "go"

/*public static void main(String [ ] args)
{
	Main myMain = new Main();
	myMain.go();
} // end of method "main"*/

} // end of class "Main"
