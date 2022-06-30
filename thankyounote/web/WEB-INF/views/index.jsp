<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HELLO
  Date: 2022-06-06
  Time: 오후 7:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style type="text/css">

  @font-face {
    font-family: 'ParkYongJun';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_220508@1.0/ParkYongJun.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
  }

  @font-face {
    font-family: 'GmarketSansLight';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
    font-weight: normal;
    font-style: normal;
  }

  @font-face {
    font-family: 'YeolrinGothic-Light';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/YeolrinGothic-Light.woff') format('woff');
    font-weight: normal;
    font-style: normal;
  }

  body {
    background-color: khaki;
  }

  #indexout {
    font-family: 'YeolrinGothic-Light';
    padding-right: 20px;
    padding-top: 10px;
    float: right;
    font-size: 20px;

  }

  #bottom a {
    font-family: 'ParkYongJun';
    text-decoration: none;
    box-shadow: none;
    color: coral;
    font-size: 20px;
  }

  #indexbox {
    border: white 1px solid;
    position: absolute;
    top: 50%;
    left: 50%;
    height: 560px;
    width: 600px;
    margin: -280px 0px 0px -320px;
    display: inline-block;
    background-color: white;
    text-align: center;
    /* 가장자리 둥글게 */
    border-radius: 7%;
    padding: 20px 20px 25px 20px;
  }

  .button, .thankyouBtn {
    font-family: 'YeolrinGothic-Light';
    background-color: #555555;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    float: bottom;
    /* 손가락 커서 */
    cursor: pointer;
    margin-bottom: 17px;
  }


  .logoutBtn {
    /* 배경 투명 */
    /*background-color: transparent;*/
    background-color: ghostwhite;
    color: black;
    padding: 4px 9px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    float: bottom;
    /* 손가락 커서 */
    cursor: pointer;
    border: 1px #555555 solid;

  }

  #title {
    /*border: blue 1px solid;*/
    font-family: 'ParkYongJun';
    font-size: 60px;
    padding: 10px 0 20px 0;
  }


</style>
<html>
<head>
  <meta charset="UTF-8">
</head>
<body>
<div id="indexout">
<%--  <c:set var="loginCheck" value="${pageContext.request.getSession(false)==null ? '' : pageContext.request.session.getAttribute('id')}"/>--%>
<%--  ${sessionScope.id}--%>
<%--  <c:set var="id" value="${sessionScope.id}"/>--%>
  <c:if test="${not empty sessionScope.id}">
    <a href="#">${sessionScope.name}님</a>
    <%-- 로그아웃 --%>
    <button class="logoutBtn">logout</button>
  </c:if>
</div>

<div id="indexbox">
  <div id="innerbox">
    <div id="title">
      Thankyou
      <br>
      Note
    </div>

    <%--고양이 로고 표시--%>
    <div id="logo">
      <a href="/"><img width="420" src="/resources/img/icon/lazycat1.gif"></a>
    </div>

    <div id="bottom">
      <c:if test="${empty sessionScope.id}">
        <%--감사노트쓰러가기--%>
        <button class="button" onclick="location.href='/user/login'">login</button><br>
        <a href="/user/register">Not a member yet?</a>
      </c:if>
      <c:if test="${not empty sessionScope.id}">
        <%--감사노트쓰러가기--%>
        <button id="writeBtn" class="button">write</button>
        <%-- 나의 감사목록 --%>
        <button class="thankyouBtn">my thankyou</button>
      </c:if>
    </div>
  </div>
</div>

</body>
</html>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%--<script type="text/javascript">--%>
<%--  let today = new Date();--%>
<%--  let year = today.getFullYear(); //년도--%>
<%--  let month = today.getMonth() + 1;--%>
<%--  let date = today.getDate();--%>
<%--  let day = today.getDay();--%>

<%--  var week = ['일', '월', '화', '수', '목', '금', '토'];--%>

<%--  document.getElementById("month").innerHTML = month;--%>
<%--  document.getElementById("date").innerHTML = date;--%>
<%--  document.getElementById("week").innerHTML = week[day];--%>
<%--  document.getElementById("year").innerHTML = year;--%>

<%--</script>--%>
<script type="text/javascript">
  $('.logoutBtn').click(function(){
    $.ajax({
      type: 'get',
      url: '/user/logout',
      success: function(){
        location.href = "/";
      },
      error: function(error) {
        alert(error);
      }
    });
  });

  $('#writeBtn').click(function(){




    location.href="/user/write";
  });
</script>
