package mySQL;

/**
 * Created by Haibara on 06/05/2017.
 */

import java.sql.*;

public class JDBCHelper
{
    private Connection con = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;

    public JDBCHelper()
    {

        try
        {
            // 加载驱动
            Class.forName("com.mysql.jdbc.Driver");
            String dbUrl = "jdbc:mysql://localhost:3306/USERS";
            String dbUser = "root";
            String dbPwd = "54xd5psa";
            // 打开数据库连接
            con = DriverManager.getConnection(dbUrl, dbUser, dbPwd);

        }
        catch (ClassNotFoundException e)
        {
            System.out.println("Error: unable to load driver class!");
            System.out
                    .println("please check if you have the mysql-connector jar file in your lib dir!");
            e.printStackTrace();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

    }

    public ResultSet executeResultSet(String sql)
    {
        return executeResultSet(sql, null);
    }

    public ResultSet executeResultSet(String sql, Object[] params)
    {
        try
        {
            // 创建一个JDBC声明
            stmt = con.prepareStatement(sql);
            if (null != params && params.length != 0)
            {
                for (int i = 0; i < params.length; i++)
                {
                    stmt.setObject(i + 1, params[i]);
                }
            }
            rs = stmt.executeQuery();
            return rs;
        }
        catch (Exception ex)
        {
            throw new RuntimeException(ex.getMessage(), ex);
        }
    }

    public int executeUpdate(String sql)
    {
        return executeUpdate(sql, null);
    }

    public int executeUpdate(String sql, Object[] params)
    {
        try
        {
            // 创建一个JDBC声明
            stmt = con.prepareStatement(sql);
            if (null != params && params.length != 0)
            {
                for (int i = 0; i < params.length; i++)
                {
                    stmt.setObject(i + 1, params[i]);
                }
            }
            return stmt.executeUpdate();
        }
        catch (Exception ex)
        {
            throw new RuntimeException(ex.getMessage(), ex);
        }
    }

    public void close()
    {
        try
        {
            // 应该明确地关闭所有的数据库资源
            if (null != rs)
                rs.close();
            if (null != stmt)
                stmt.close();
            if (null != con)
                con.close();

        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }

    }
}
