<!DOCTYPE html>
<html lang="en" class="bg-dark">
<head>
    <meta charset="utf-8"/>
    <title>公司内部系统 | 登陆</title>
    <meta name="description"
          content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <link rel="stylesheet" href="css/app.v2.css" type="text/css"/>

</head>
<body>
<section id="content" class="m-t-lg wrapper-md animated fadeInUp">
    <div class="container aside-xxl"><a class="navbar-brand block" href="index.jsp">OA Portal</a>
        <section class="panel panel-default bg-white m-t-lg">
            <header class="panel-heading text-center"><strong>登陆</strong></header>
            <%
                String ss = request.getParameter("condition");
                if (ss != null && ss.equals("wrong1")) {%>
            <br/>
            <div style="text-align:center; color:red"><b>用户名或密码错误，请重新输入</b></div>
            <div class="line line-dashed"></div>
            <%}%>

            <%
                String ss2 = request.getParameter("condition");
                if (ss != null && ss.equals("wrong2")) {%>
            <br/>
            <div style="text-align:center; color:green"><b>密码修改成功，请重新登陆</b></div>
            <div class="line line-dashed"></div>
            <%}%>
            <form method="POST" name="frmLogin" action="loginServlet" class="panel-body wrapper-lg">
                <div class="form-group">
                    <label class="control-label">用户名</label>
                    <input name="username" placeholder="username" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <label class="control-label">密码</label>
                    <input type="password" name="password" placeholder="Password" class="form-control input-lg">
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox">
                        Keep me logged in </label>
                </div>
                <a href="#" class="pull-right m-t-xs">
                    <small>Forgot password?</small>
                </a>
                <button type="submit" class="btn btn-primary" onclick="return validateLogin()">登陆</button>
                <div class="line line-dashed"></div>
                <p class="text-muted text-center">
                    <small>Do not have an account?</small>
                </p>
                <a href="signup.html" class="btn btn-default btn-block">Create an account</a>
            </form>
        </section>
    </div>
</section>

<script type="text/javascript">
    function validateLogin() {
        var sUserName = document.frmLogin.username.value;
        var sPassword = document.frmLogin.password.value;
        if (sUserName == "") {
            alert("请输入用户名!");
            return false;
        }

        if (sPassword == "") {
            alert("请输入密码!");
            return false;
        }
    }
</script>
<!-- footer -->
<footer id="footer">
    <div class="text-center padder">
        <p>
            <small>公司内部系统 &nbsp;&copy; 2017</small>
        </p>
    </div>
</footer>
<!-- / footer -->
<script src="js/app.v2.js"></script> <!-- Bootstrap --> <!-- App -->
</body>
</html>
