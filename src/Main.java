

public class Main {

DbUser myDbUser = null;


private void go()
{
	String lecName = null;
	System.out.println("In go...");
	myDbUser = new DbUser("C:\\Users\\xwt\\Desktop\\大三下\\数据库\\Exercise3\\databases\\Northwind.db");

	//display the database details
	myDbUser.getDatabaseDetails();

	//get the sorted create table statements
	myDbUser.getCreateTableStatementsForAllTables();
	//myDbUser.getSortedTableStatementsForAllTables();

	//get the insert statements
	myDbUser.getInsertStatementsForAllTables();

	//get the all indexes
	myDbUser.getCreateIndexStatementsForAllTables();



	myDbUser.close();
}; // end of method "go"

public static void main(String [ ] args)
{
	Main myMain = new Main();
	myMain.go();
} // end of method "main"

} // end of class "Main"
