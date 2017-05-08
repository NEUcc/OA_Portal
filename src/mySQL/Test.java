package mySQL;

/**
 * Created by Haibara on 06/05/2017.
 */
import java.sql.ResultSet;
import java.sql.SQLException;

public class Test
{
    public static void main(String[] args)
    {
        JDBCHelper dbHelper = new JDBCHelper();

        ResultSet resultSet = dbHelper.executeResultSet("SELECT * FROM Main;");

        try
        {
            while (resultSet.next())
            {
                System.out.println("-------------");
                System.out.println("name: " + resultSet.getString("username"));
                System.out.println("birth: " + resultSet.getString("userpsw"));

            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            dbHelper.close();
        }

    }

}