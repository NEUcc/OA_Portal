<%--
  Created by IntelliJ IDEA.
  User: Haibara
  Date: 24/04/2017
  Time: 9:10 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="JavaBean.EmployeeBean" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String ss = request.getParameter("session");
    if (ss != null && ss.equals("clear")) {
        session.removeAttribute("username");
    }

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
<!DOCTYPE html>
<html lang="en" class="app">
<head>
    <meta charset="utf-8"/>
    <title>公司内部系统</title>
    <meta name="description"
          content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <link rel="stylesheet" href="css/app.v2.css" type="text/css"/>
    <link rel="stylesheet" href="js/calendar/bootstrap_calendar.css" type="text/css"/>
    <link rel="stylesheet" href="js/nestable/nestable.css" type="text/css"/>
</head>
<body>
<section class="vbox">
    <header class="bg-dark dk header navbar navbar-fixed-top-xs">
        <div class="navbar-header aside-md"><a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen"
                                               data-target="#nav"> <i class="fa fa-bars"></i> </a> <a href="#"
                                                                                                      class="navbar-brand"
                                                                                                      data-toggle="fullscreen"><img
                src="images/logo.png" class="m-r-sm">OA Portal</a> <a class="btn btn-link visible-xs"
                                                                      data-toggle="dropdown" data-target=".nav-user"> <i
                class="fa fa-cog"></i> </a></div>
        <ul class="nav navbar-nav hidden-xs">

            <%//此处是activity%>

            <li class="dropdown"><a href="#" class="dropdown-toggle dker" data-toggle="dropdown"> <i
                    class="fa fa-building-o"></i> <span class="font-bold">我的信息</span> </a>

                <% if (!username.equals("GUEST")) {
                    EmployeeBean employee = (EmployeeBean) session.getAttribute("employee");
                %>
                <section class="dropdown-menu aside-xl on animated fadeInLeft no-borders lt">
                    <div class="wrapper lter m-t-n-xs"><a href="#" class="thumb pull-left m-r"> <img
                            src="images/avatar.jpg" class="img-circle"> </a>
                        <div class="clear"><a href="#"><span class="text-white font-bold">@<%=username%></span></a>
                            <small class="block"><%=employee.getPosition()%>
                            </small>
                            <a href="#" class="btn btn-xs btn-success m-t-xs">Online</a></div>
                    </div>
                    <div class="row m-l-none m-r-none m-b-n-xs text-center">
                        <div class="col-xs-4">
                            <div class="padder-v"><span class="m-b-xs h4 block text-white">245</span>
                                <small class="text-muted">Mails</small>
                            </div>
                        </div>
                        <div class="col-xs-4 dk">
                            <div class="padder-v"><span class="m-b-xs h4 block text-white">55</span>
                                <small class="text-muted">To-do works</small>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="padder-v"><span class="m-b-xs h4 block text-white">2,035</span>
                                <small class="text-muted">Messages</small>
                            </div>
                        </div>
                    </div>
                </section>

                <%}%>
            </li>

            <%//此处是UP按钮%>
            <li>
            <div class="m-t m-l"><a href="price.html" class="dropdown-toggle btn btn-xs btn-primary"
            title="Upgrade"><i class="fa fa-long-arrow-up"></i></a></div>
            </li>

            </ul>
            <ul class="nav navbar-nav navbar-right hidden-xs nav-user">
            <li class="hidden-xs"><a href="#" class="dropdown-toggle dk" data-toggle="dropdown"> <i
            class="fa fa-bell"></i> <span class="badge badge-sm up bg-danger m-l-n-sm count">2</span> </a>

            <%//此处是notification%>
            <section class="dropdown-menu aside-xl">
                <section class="panel bg-white">
                    <header class="panel-heading b-light bg-light"><strong>You have <span class="count">2</span>
                        notifications</strong></header>
                    <div class="list-group list-group-alt animated fadeInRight"><a href="#"
                                                                                   class="media list-group-item">
                            <span class="pull-left thumb-sm"><img src="images/avatar.jpg" alt="John said"
                                                                  class="img-circle"> </span> <span
                            class="media-body block m-b-none"> Use awesome animate.css<br>
              <small class="text-muted">10 minutes ago</small> </span> </a> <a href="#"
                                                                               class="media list-group-item"> <span
                            class="media-body block m-b-none"> 1.0 initial released<br>
              <small class="text-muted">1 hour ago</small> </span> </a></div>
                    <footer class="panel-footer text-sm"><a href="#" class="pull-right"><i
                            class="fa fa-cog"></i></a> <a href="#notes"
                                                          data-toggle="class:show animated fadeInRight">See all the
                        notifications</a></footer>
                </section>
            </section>

            </li>
            <li class="dropdown hidden-xs"><a href="#" class="dropdown-toggle dker" data-toggle="dropdown"><i
                    class="fa fa-fw fa-search"></i></a>

                <%//此处是search%>
                <section class="dropdown-menu aside-xl animated fadeInUp">
                    <section class="panel bg-white">
                        <form role="search">
                            <div class="form-group wrapper m-b-none">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search">
                                    <span class="input-group-btn">
                  <button type="submit" class="btn btn-info btn-icon"><i class="fa fa-search"></i></button>
                  </span></div>
                            </div>
                        </form>
                    </section>
                </section>


            </li>

            <%if (username.equals("GUEST")) {%>
            <li class="dropdown">
                <a href="login.jsp"><span class="font-bold">&nbsp;&nbsp;Login&nbsp;</span> </a>
            </li>
            <% } else { %>
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <span
                        class="thumb-sm avatar pull-left"> <img src="images/avatar.jpg">
                </span>
                <%=username%>
                <b class="caret"></b> </a>
                <ul class="dropdown-menu animated fadeInRight">
                    <span class="arrow top"></span>
                    <li><a href="#">Settings</a></li>
                    <li><a href="profile.html">Profile</a></li>
                    <li><a href="#"> <span class="badge bg-danger pull-right">3</span> Notifications </a></li>
                    <li><a href="docs.html">Help</a></li>
                    <li class="divider"></li>
                    <li><a href="quit.jsp">Logout</a></li>
                </ul>
            </li>
            <%}%>
        </ul>
    </header>
    <section>
        <section class="hbox stretch"> <!-- .aside -->
            <aside class="bg-dark lter aside-md hidden-print" id="nav">
                <section class="vbox">
                    <header class="header bg-primary lter text-center clearfix">
                        <div class="btn-group">
                            <button type="button" class="btn btn-sm btn-dark btn-icon" title="New project"><i
                                    class="fa fa-plus"></i></button>
                            <div class="btn-group hidden-nav-xs">
                                <button type="button" class="btn btn-sm btn-primary dropdown-toggle"
                                        data-toggle="dropdown"> 当前状态: 在线 <span class="caret"></span></button>
                                <ul class="dropdown-menu text-left">
                                    <li><a href="#">在线</a></li>
                                    <li><a href="#">正忙</a></li>
                                    <li><a href="#">离开
                                    </a></li>
                                </ul>
                            </div>
                        </div>
                    </header>
                    <section class="w-f scrollable">
                        <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0"
                             data-size="5px" data-color="#333333"> <!-- nav -->
                            <nav class="nav-primary hidden-xs">
                                <ul class="nav">
                                    <li class="active"><a href="index.jsp" class="active"> <i
                                            class="fa fa-dashboard icon"> <b class="bg-danger"></b> </i> <span>首页</span>

                                    </a>


                                    </li>
                                    <li><a href="#"> <i class="fa fa-columns icon"> <b class="bg-warning"></b>
                                    </i><span class="pull-right"> <i class="fa fa-angle-down text"></i> <i
                                            class="fa fa-angle-up text-active"></i> </span>
                                        </i> <span>新闻中心</span> </a>
                                        <ul class="nav lt">
                                            <li><a href="news.jsp"> <i class="fa fa-angle-right"></i>
                                                <span>各类别新闻</span>
                                            </a></li>
                                            <li><a href="news_search.jsp"> <i class="fa fa-angle-right"></i>
                                                <span>新闻搜索</span>
                                            </a></li>
                                        </ul>

                                    </li>

                                    <li><a href="#"> <i class="fa fa-flask icon"> <b class="bg-success"></b> </i>
                                        <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i
                                                class="fa fa-angle-up text-active"></i> </span> <span>文档中心</span> </a>
                                        <ul class="nav lt">
                                            <li><a href="public_documents.jsp"> <i class="fa fa-angle-right"></i><span>公共文档库</span>
                                            </a></li>
                                            <li><a href="department_d.jsp"> <i class="fa fa-angle-right"></i> <span>部门文档库</span>
                                            </a></li>
                                            <li><a href="documents_search.jsp"> <i class="fa fa-angle-right"></i> <span>文档搜索</span>
                                            </a></li>
                                            <li><a href="special_d.jsp"> <i
                                                    class="fa fa-angle-right"></i><span>特殊职能文档库</span>
                                            </a></li>
                                        </ul>

                                    </li>

                                    <li><a href="#"> <i class="fa fa-file-text icon"> <b class="bg-primary"></b>
                                    </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i
                                            class="fa fa-angle-up text-active"></i> </span> <span>员工信息</span> </a>
                                        <ul class="nav lt">
                                            <li><a href="department_tree.jsp"> <i class="fa fa-angle-right"></i> <span>组织机构树</span>
                                            </a></li>
                                            <li><a href="contacts.jsp"> <i class="fa fa-angle-right"></i>
                                                <span>公司/部门通讯录</span>
                                            </a></li>
                                            <li><a href="employee_search.jsp"> <i class="fa fa-angle-right"></i> <span>员工查找</span>
                                            </a></li>
                                        </ul>


                                    </li>
                                    <li><a href="#"> <i class="fa fa-pencil icon"> <b class="bg-info"></b>
                                    </i> <span class="pull-right"> <i class="fa fa-angle-down text"></i> <i
                                            class="fa fa-angle-up text-active"></i> </span>
                                        <span>个人设置</span> </a>
                                        <ul class="nav lt">
                                            <li><a href="information.jsp"> <i class="fa fa-angle-right"></i>
                                                <span>个人信息</span>
                                            </a></li>
                                            <li><a href="change_password.jsp"> <i class="fa fa-angle-right"></i> <span>密码修改</span>
                                            </a></li>
                                            <li><a href="login_settings.jsp"> <i class="fa fa-angle-right"></i> <span>登陆设置</span>
                                            </a></li>
                                        </ul>

                                    </li>
                                    <li><a href="mail.jsp"> <b class="badge bg-danger pull-right">3</b> <i
                                            class="fa fa-envelope-o icon"> <b class="bg-primary dker"></b> </i>
                                        <span>邮件</span>
                                    </a></li>

                                    <li><a href="calendar.jsp">
                                        <i class="fa fa-calendar icon"> <b class="bg-primary dker"></b> </i>
                                        <span>工作日历</span>
                                    </a></li>

                                    <li><a href="#"> <i class="fa fa-gear icon"> <b class="bg-info"></b>
                                    </i><span class="pull-right"> <i class="fa fa-angle-down text"></i> <i
                                            class="fa fa-angle-up text-active"></i> </span>
                                        <span>系统管理</span> </a>
                                        <ul class="nav lt">
                                            <li><a href="edit_department.jsp"> <i class="fa fa-angle-right"></i> <span>组织机构管理</span>
                                            </a></li>
                                            <li><a href="edit_employee.jsp"> <i class="fa fa-angle-right"></i> <span>员工信息管理</span>
                                            </a></li>
                                            <li><a href="permission_setting.jsp"> <i class="fa fa-angle-right"></i>
                                                <span>权限设置</span>
                                            </a></li>
                                            <li><a href="news_management.jsp"> <i class="fa fa-angle-right"></i> <span>新闻管理</span>
                                            </a></li>
                                            <li><a href="announcement_m.jsp"> <i class="fa fa-angle-right"></i> <span>公告管理</span>
                                            </a></li>
                                            <li><a href="document_m.jsp"> <i class="fa fa-angle-right"></i>
                                                <span>文档库管理</span>
                                            </a></li>
                                            <li><a href="homepage_customize.jsp"> <i class="fa fa-angle-right"></i>
                                                <span>首页定制</span>
                                            </a></li>
                                            <li><a href="data_statistics.jsp"> <i class="fa fa-angle-right"></i> <span>数据统计</span>
                                            </a></li>
                                        </ul>
                                    </li>

                                </ul>
                            </nav>
                            <!-- / nav --> </div>
                    </section>
                    <footer class="footer lt hidden-xs b-t b-dark">
                        <div id="chat" class="dropup">
                            <section class="dropdown-menu on aside-md m-l-n">
                                <section class="panel bg-white">
                                    <header class="panel-heading b-b b-light">Active chats</header>
                                    <div class="panel-body animated fadeInRight">
                                        <p class="text-sm">No active chats.</p>
                                        <p><a href="#" class="btn btn-sm btn-default">Start a chat</a></p>
                                    </div>
                                </section>
                            </section>
                        </div>

                        <a href="#nav" data-toggle="class:nav-xs" class="pull-right btn btn-sm btn-dark btn-icon"> <i
                                class="fa fa-angle-left text"></i> <i class="fa fa-angle-right text-active"></i> </a>
                        <div class="btn-group hidden-nav-xs">
                            <button type="button" title="Chats" class="btn btn-icon btn-sm btn-dark"
                                    data-toggle="dropdown" data-target="#chat"><i class="fa fa-comment-o"></i></button>
                        </div>
                    </footer>
                </section>
            </aside>
            <!-- /.aside -->
            <section id="content">
                <section class="vbox">
                    <section class="scrollable padder">
