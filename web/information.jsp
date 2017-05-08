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

<jsp:useBean id="employee" type="JavaBean.EmployeeBean" scope="session"/>
<%
    int id = employee.getId();
    String name = employee.getName();
    String department = employee.getDepartment();
    int age = employee.getAge();
    String sex = employee.getSex();
    if (sex.trim().equals("M")) {
        sex = "男";
    } else {
        sex = "女";
    }
    String position = employee.getPosition();
    long phonenumber = employee.getPhonenumber();
    String email = employee.getEmail();
%>

<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
    <li><a href="index.jsp"><i class="fa fa-home"></i> Home</a></li>
    <li class="active">Information</li>
</ul>
<h1 align="center">个人信息</h1>
<hr/>

<table width="100%" border=2 align="center" style="text-align:center" id="MyStretchGrid"
       class="table table-striped datagrid m-b-sm">
    <tr>
        <td><b>ID：</b></td>
        <td><%=id %>
        </td>
    </tr>
    <tr>
        <td><b>姓名：</b></td>
        <td><%=name %>
        </td>
    </tr>
    <tr>
        <td><b>部门：</b></td>
        <td><%=department %>
        </td>
    </tr>
    <tr>
        <td><b>性别：</b></td>
        <td><%=sex %>
        </td>
    </tr>
    <tr>
        <td><b>年龄：</b></td>
        <td><%=age %>  岁</td>
    </tr>
    <tr>
        <td><b>职位：</b></td>
        <td><%=position %>
        </td>
    </tr>
    <tr>
        <td><b>电话：</b></td>
        <td><%=phonenumber %>
        </td>
    </tr>
    <tr>
        <td><b>邮箱：</b></td>
        <td><%=email %>
        </td>
    </tr>
</table>

<jsp:include page="footer.jsp"/>
