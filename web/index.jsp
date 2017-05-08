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
%>

<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
    <li><a href="index.jsp"><i class="fa fa-home"></i> Home</a></li>
    <li class="active">Homepage</li>
</ul>


<h1 align="center">首页</h1>

<hr/>
<div class="row">
    <div class="col-lg-12 ">
        <div class="alert alert-info">
            Welcome back, &nbsp;<b><%=username%>
        </b>
            &nbsp;
            Have a nice day!
        </div>

    </div>
</div>


<jsp:include page="footer.jsp"/>