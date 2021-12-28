<%@ page import="com.me.fabian.vo.Fruit" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.me.fabian.vo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>购物车</title>
  <link rel="stylesheet" href="css/showcart.css" />
  <link rel="stylesheet" type="text/css" href="css/main.css"/>
  <script src="js/imgs.js" type="text/javascript" charset="utf-8"></script>

  <script>
    window.onload=function footer_img_non(){
      document.getElementById("footer_img").style.display="none";
    }
  </script>
  <%
      List<Fruit> fruits=(List<Fruit>)request.getAttribute("fruits");
      User user=(User)session.getAttribute("user");
  %>
</head>
<body onload="money()">
<div class="con">
  <div class="head">
    <a href="index.jsp">
      <img src="img/logo_login.png" alt="" />
    </a>
  </div>
  <div class="shop_box">
    <div class="head_text_box">
					<span id="head_text">
						我的购物车
					</span>
    </div>

    <div class="shop_title">
      <div id="st1">商品</div>
      <div id="st2">规格</div>
      <div id="st3">单价</div>
      <div id="st4">数量</div>
      <div id="st5">小计</div>
      <div id="st6">操作</div>
    </div>

    <%
      for(Fruit fruit:fruits)
      {
        out.print("    <div class=\"shop\">\n" +
                "      <div class=\"s1\">\n" +
                "        <div class=\"s1_img\"><a href=\"/FruitServlet?key=info&id="+user.getId()+"&fid="+fruit.getFid()+"\"><img src=\"img/fruits/"+fruit.getFid()+"/(1).jpg\" /></a></div>\n" +
                "        <div class=\"s1_text\"><a href=\"/FruitServlet?key=info&id="+user.getId()+"&fid="+fruit.getFid()+"\">"+fruit.getFname()+"</a></div>\n" +
                "      </div>\n" +
                "\n" +
                "      <div class=\"s2\">\n" +
                "        "+fruit.getSpec()+"\n" +
                "      </div>\n" +
                "\n" +
                "      <div class=\"s3\">\n" +
                "        ￥<span id=\"up"+fruit.getFid()+"\">"+fruit.getUp()+"</span>\n" +
                "      </div>\n" +
                "\n" +
                "      <div class=\"s4\">\n" +
                "     <div class=\"Unum\"><span id=\"numl\" class=\"numl\" onclick=\"number(1,"+fruit.getFid()+");sum("+fruit.getFid()+");money()\">-</span><span id=\"num"+fruit.getFid()+"\">1</span><span id=\"numr\" class=\"numr\" onclick=\"number(0,"+fruit.getFid()+");sum("+fruit.getFid()+");money()\">+</span></div>\n" +
                "      </div>\n" +
                "\n" +
                "      <div class=\"s5\">\n" +
                "        ￥<span id=\"sum"+fruit.getFid()+"\" class=\"fsum\">"+fruit.getUp()+"</span>\n" +
                "      </div>\n" +
                "\n" +
                "      <div class=\"s6\">\n" +
                "        <a href=\"/ShopServlet?key=del&uid="+user.getId()+"&fid="+fruit.getFid()+"&str=cart\">删除</a>\n" +
                "      </div>\n" +
                "    </div>");
      }
    %>

    <div class="shop_footer">
      &nbsp;
    </div>
  </div>

  <div class="sum_mon">
    <div class="money">商品总金额：<span id="money">￥68 </span></div><br />
    <input type="button" name="" id="addmon" value="订单结算" />
  </div>
</div>
<jsp:include page="footer/footer.jsp"></jsp:include>
</body>
</html>
