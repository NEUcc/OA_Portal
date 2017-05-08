package mySQL;

import JavaBean.EmployeeBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Haibara on 07/05/2017.
 */
@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=gb2312");
        request.setCharacterEncoding("gb2312");

        String result;

        String username = request.getParameter("username");
        String psw = request.getParameter("password");

        if(username.equals("") || username.length() > 20){
            try {
                result = "请输入用户名（不能超过20个字符）";
                request.setAttribute("message", result);
                response.sendRedirect("login.jsp");
                return;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if(psw.equals("") || psw.length() > 20){
            try {
                result = "请输入密码（不能超过20个字符）";
                request.setAttribute("message", result);
                response.sendRedirect("login.jsp");
                return;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        JDBCHelper dbHelper = new JDBCHelper();

        ResultSet resultSet = dbHelper.executeResultSet("SELECT * FROM Main");

        HttpSession session = request.getSession();
        session.setAttribute("username", username);
        try
        {
            while (resultSet.next()) {
                if (resultSet.getString("username").equals(username)) {
                    if (resultSet.getString("userpsw").equals(psw)) {
                        EmployeeBean employee = new EmployeeBean(Integer.parseInt(resultSet.getString("id")),
                                resultSet.getString("name"), resultSet.getString("department"),
                                Integer.parseInt(resultSet.getString("age")), resultSet.getString("sex"),
                                resultSet.getString("position"), Long.parseLong(resultSet.getString("phonenumber")),
                                resultSet.getString("email"));
                        session.setAttribute("employee", employee);
                        response.sendRedirect("indexServlet");
                        return;
                    }
                }

            }
            session.setAttribute("message", "用户名或密码不匹配。");
            response.sendRedirect("login.jsp?condition=wrong1") ;
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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
