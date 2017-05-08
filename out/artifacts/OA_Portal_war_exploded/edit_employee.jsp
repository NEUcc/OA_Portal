﻿<jsp:include page="header.jsp"/>

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
    <li class="active">Edit employee</li>
</ul>


<h1 align="center">员工信息管理</h1>

<hr/>



<jsp:include page="footer.jsp"/>