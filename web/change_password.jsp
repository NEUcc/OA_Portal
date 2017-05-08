<jsp:include page="header.jsp"/>

<%
    String username;
    if (session == null) {
        username = "GUEST";
    }

    //取出会话数据
    String loginName = (String) session.getAttribute("username");
    if (loginName == null) {
        username = "GUEST";
    } else {
        username = loginName;
    }
    if (username.equals("GUEST")){
        response.sendRedirect("login.jsp");
        return ;
    }
%>

<style>
    #form1{
        position: absolute;
        left: 100px;
    }

</style>

<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
    <li><a href="index.jsp"><i class="fa fa-home"></i> Home</a></li>
    <li class="active">Change password</li>
</ul>
<h1 align="center">密码修改</h1>
<hr/>

<div id="form1" class="col-sm-10">
    <form class="form-horizontal" data-validate="parsley" method="post" action="changePasswordServlet">
        <section class="panel panel-default">
            <header class="panel-heading"> <strong>Type constraints</strong> </header>
            <div class="panel-body">

                <%
                    String ss = request.getParameter("condition");
                    if (ss != null && ss.equals("wrong2")) {%>
                <div style="text-align:center; color:red"><b>两次输入密码不一致，请重新输入</b></div>
                <div class="line line-dashed"></div>
                <%}%>
                <%
                    String ss2 = request.getParameter("condition");
                    if (ss2 != null && ss2.equals("wrong1")) {%>
                <div style="text-align:center; color:red"><b>当前密码输入错误，请重新输入</b></div>
                <div class="line line-dashed"></div>
                <%}%>
                <div class="form-group">
                    <label class="col-sm-3 control-label">当前密码</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" name="password" data-required="true" placeholder="password">
                    </div>
                </div>
                <div class="line line-dashed line-lg pull-in"></div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">新密码</label>
                    <div class="col-sm-9">
                        <input type="text" name="new_password1" class="form-control" placeholder="new password">
                    </div>
                </div>
                <div class="line line-dashed line-lg pull-in"></div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">请再输一次</label>
                    <div class="col-sm-9">
                        <input type="text" name="new_password2" class="form-control" placeholder="confirm new password">
                    </div>
                </div>


            </div>
            <footer class="panel-footer text-right bg-light lter">
                <button type="submit" class="btn btn-success btn-s-xs">Submit</button>
            </footer>
        </section>
    </form>
</div>

<jsp:include page="footer.jsp"/>