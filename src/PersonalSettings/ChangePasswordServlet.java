package PersonalSettings;

import mySQL.JDBCHelper;

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
@WebServlet(name = "ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        String new_password1 = request.getParameter("new_password1");
        String new_password2 = request.getParameter("new_password2");


        if (!new_password1.equals(new_password2)) {
            response.sendRedirect("change_password.jsp?condition=wrong2");
            return ;
        }

        JDBCHelper dbHelper = new JDBCHelper();

        ResultSet resultSet = dbHelper.executeResultSet("SELECT * FROM Main");


        HttpSession session = request.getSession();

        try {
            while (resultSet.next()) {
                if (resultSet.getString("username").equals(session.getAttribute("username"))) {
                    if (resultSet.getString("userpsw").equals(password)) {
                        int id = Integer.parseInt(resultSet.getString("id"));
                        dbHelper.executeUpdate("UPDATE Main SET userpsw='" + new_password1 + "' WHERE id ='" + id + "'");
                        response.sendRedirect("login.jsp?condition=wrong2") ;
                    }else {
                        response.sendRedirect("change_password.jsp?condition=wrong1");
                        return ;
                    }
                }

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dbHelper.close();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
