<%@ page import="com.me.fabian.vo.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8" />
  <title></title>
  <link rel="stylesheet" type="text/css" href="css/BSindex.css"/>
  <link rel="stylesheet" type="text/css" href="css/main.css"/>
  <script src="js/BSindex.js" type="text/javascript" charset="utf-8"></script>

</head>
<body >
<div class="mean">
  <div class="logo">
    <a href="index.jsp"><img src="img/alogo.png" alt="" /></a>
  </div>

  <div class="mean_ul">
    <div class="mean_li" onclick="sss('u')">用户管理</div>
    <div class="user_list" id="user_list">
      <div class="mm"><a href="/BSServlet?key=alluser">全部用户</a></div>
      <div class="mm"><a href="BSindex2.jsp">添加用户</a></div>
    </div>
    <div class="mean_li" onclick="sss('f')">商品管理</div>
    <div class="fruit_list" id="fruit_list">
      <div class="mm"><a href="/BSServlet?key=allfruit">库存水果</a></div>
      <div class="mm"><a href="/BSServlet?key=hotfruit">热卖水果</a></div>
      <div class="mm"><a href="BSindex5.jsp">水果入库</a></div>
    </div>
  </div>

</div>

<div class="gong" id="x1">
  <div class="con">
    <div class="tit">
      <ul>
        <li>用户名</li>
        <li class="i">&nbsp;</li>
        <li>邮箱</li>
        <li class="i">&nbsp;</li>
        <li>手机</li>
        <li class="i">&nbsp;</li>
        <li>操作</li>
      </ul>
    </div>

    <%
      List<User> users=new ArrayList<User>();
      if(request.getAttribute("allusers")!=null)
      {
        users=(List<User>)request.getAttribute("allusers");

        for(User user:users)
        {
          out.print("    <div class=\"info\">\n" +
                  "      <ul>\n" +
                  "        <li><a href=\"/BSServlet?key=finduser&id="+user.getId()+"\">"+user.getUname()+"</a></li>\n" +
                  "        <li class=\"i\">&nbsp;</li>\n" +
                  "        <li><a href=\"/BSServlet?key=finduser&id="+user.getId()+"\">"+user.getEmail()+"</a></li>\n" +
                  "        <li class=\"i\">&nbsp;</li>\n" +
                  "        <li><a href=\"/BSServlet?key=finduser&id="+user.getId()+"\">"+user.getPhone()+"</a></li>\n" +
                  "        <li class=\"i\">&nbsp;</li>\n" +
                  "        <li><a href=\"/BSServlet?key=deluser&id="+user.getId()+"\">删除</a></li>\n" +
                  "      </ul>\n" +
                  "    </div>");
        }
      }


    %>
  </div>
</div>

</body>
</html>

