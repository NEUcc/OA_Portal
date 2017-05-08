package mySQL;

import JavaBean.EmployeeBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Haibara on 07/05/2017.
 */

@WebServlet(name = "IndexServlet")
public class IndexServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();

        String html;

        //得到session对象
        HttpSession session = request.getSession(false);
        if (session == null) {
            //没有登录成功，跳转到登录页面
            response.sendRedirect(request.getContextPath() + "login.jsp");
            return;
        }

        //取出会话数据
        String loginName = (String) session.getAttribute("username");
        if (loginName == null) {
            //没有登录成功，跳转到登录页面
            response.sendRedirect(request.getContextPath() + "login.jsp");
            return;
        }

        EmployeeBean employee = (EmployeeBean) session.getAttribute("employee");

        html = "<!DOCTYPE html>\n" +
                "<html lang=\"en\" class=\"bg-dark\">\n" +
                "<head>\n" +
                "    <meta charset=\"utf-8\" />\n" +
                "    <title>公司内部系统 | 登陆成功</title>\n" +
                "    <meta name=\"description\" content=\"app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav\" />\n" +
                "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\n" +
                "    <link rel=\"stylesheet\" href=\"css/app.v2.css\" type=\"text/css\" />\n" +
                "    \n" +
                "</head>\n" +
                "<body>\n" +
                "<section id=\"content\" class=\"m-t-lg wrapper-md animated fadeInUp\">\n" +
                "    <div class=\"container aside-xxl\"> <a class=\"navbar-brand block\" href=\"index.jsp\">OA Portal</a>\n" +
                "        <section class=\"panel panel-default bg-white m-t-lg\">\n" +
                "            <header class=\"panel-heading text-center\"> <strong>登陆成功</strong> </header>\n" +
                "            <h2 style=\"text-align:center\">欢迎回来</h2>\n" +
                "            <br/>\n" +
                "                      <header class=\"panel-heading bg-danger lt no-border\">\n" +
                "                        <div class=\"clearfix\"> <a href=\"#\" class=\"pull-left thumb avatar b-3x m-r\"> <img src=\"images/avatar.jpg\" class=\"img-circle\"> </a>\n" +
                "                          <div class=\"clear\">\n" +
                "                            <div class=\"h3 m-t-xs m-b-xs text-white\">" + employee.getName() + "<i class=\"fa fa-circle text-white pull-right text-xs m-t-sm\"></i> </div>\n" +
                "                            <small class=\"text-muted\">" + employee.getPosition() + "</small> </div>\n" +
                "                        </div>\n" +
                "                      </header>\n" +
                "<br/><br/><div class=\"line line-dashed\"></div><div align=\"center\"><button type=\"submit\" class=\"btn btn-primary\" onclick=\"window.location.href='index.jsp'\">返回首页</button></div><br>" +
                "        </section>\n" +
                "    </div>\n" +
                "</section>\n" +
                "</body>\n" +
                "</html>";


        writer.write(html);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
