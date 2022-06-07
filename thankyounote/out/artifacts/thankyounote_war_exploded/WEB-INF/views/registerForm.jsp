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

    #indexout a {
        text-decoration: none;
        box-shadow: none;
        color: black;
    }

    #indexbox {
        border: white 1px solid;
        position: absolute;
        top: 50%;
        left: 50%;
        height: 520px;
        width: 600px;
        margin: -280px 0px 0px -320px;
        display: inline-block;
        background-color: white;
        text-align: center;
        /* 가장자리 둥글게 */
        border-radius: 7%;
        padding: 20px 20px 25px 20px;
    }

    .button {
        font-family: 'YeolrinGothic-Light';
        background-color: #555555;
        border: none;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        float: bottom;
        /* 손가락 커서 */
        cursor: pointer;
    }

    #innerbox {
        /*border: red 1px solid;*/
    }

    #title {
        /*border: blue 1px solid;*/
        font-family: 'ParkYongJun';
        font-size: 60px;
        padding: 10px 0 20px 0;
    }

    #check {
        /*border: #30426E 1px solid;*/
        font-family: 'ParkYongJun';
        font-size: 20px;
        color: coral;
        height: 50px;
    }

    #register {
        /*border: red 1px solid;*/
        font-family: 'ParkYongJun';
        font-size: 30px;
        /*height: 190px;*/
        align-items: center;
        padding: 12px ;
    }

    #userid {
        height: 50px;
        background-color: lightgray;
        border: none;
        border-radius: 30%;
        /* input 입력시 움직임 제거 */
        vertical-align: middle;
        padding: 0 0 0 20px;
        font-family: 'ParkYongJun';
        font-size: 20px;
    }

    #userpwd {
        height: 50px;
        background-color: lightgray;
        border: none;
        border-radius: 30%;
        /* input 입력시 움직임 제거 */
        vertical-align: middle;
        padding: 0 0 0 20px;
        font-family: 'ParkYongJun';
        font-size: 20px;
    }

    #userrepwd {
        height: 50px;
        background-color: lightgray;
        border: none;
        border-radius: 30%;
        /* input 입력시 움직임 제거 */
        vertical-align: middle;
        padding: 0 0 0 20px;
        font-family: 'ParkYongJun';
        font-size: 20px;
    }

    #username {
        height: 50px;
        background-color: lightgray;
        border: none;
        border-radius: 30%;
        /* input 입력시 움직임 제거 */
        vertical-align: middle;
        padding: 0 0 0 20px;
        font-family: 'ParkYongJun';
        font-size: 20px;
    }

    .registerForm {
        /*border: blue 1px solid;*/
        text-align: center;
        padding: 10px 0 10px 0;
    }

    #idcheck {
        font-family: 'YeolrinGothic-Light';
        color: coral;
        font-size: 13px;
        padding-bottom: 5px;
        text-align: center;
    }

    #pwdcheck {
        font-family: 'YeolrinGothic-Light';
        color: coral;
        font-size: 13px;
        padding-bottom: 5px;
        padding-left: 60px;
        text-align: center;
    }

    #valBtn {
        font-family: 'YeolrinGothic-Light';
        border: none;
        background-color: transparent;
        margin-left: 7px;
        cursor: pointer;
        /*border-radius: 15%;*/
    }


</style>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<form id="registerForm">
<div id="indexout">
    <%--  <c:set var="loginCheck" value="${pageContext.request.getSession(false)==null ? '' : pageContext.request.session.getAttribute('id')}"/>--%>
    <%--  ${sessionScope.id}--%>
    <%--  <c:set var="id" value="${sessionScope.id}"/>--%>
    <c:if test="${empty sessionScope.id}">
        <a href="/user/login">login</a> / <a href="#">new</a>
    </c:if>
    <c:if test="${not empty sessionScope.id}">
        <a href="#">${sessionScope.name}님</a>
        <%-- 로그아웃 --%>
        <button class="logoutBtn">logout</button>

    </c:if>
</div>

<div id="indexbox">
    <div id="innerbox">
        <div id="title">
           WELCOME
        </div>

        <%--login--%>
        <div id="register">
            <div class="registerForm">
                <label for="userid" class="blind">ID&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                <input id="userid" size="23" type="text">
                <input id="valBtn" type="button" value="중복체크">
                <input type="text" name="valCheck" id="valCheck" value="">
            </div>
            <%--유효성 검사 안내란--%>
            <div id="idcheck">*5~20자의 영문, 소문자만 사용가능합니다.</div>

            <div class="registerForm">
                <label for="userpwd" class="blind">PWD&nbsp&nbsp&nbsp</label>
                <input id="userpwd" size="30" type="password">
            </div>
            <%--유효성 검사 안내란--%>
            <div id="pwdcheck">*8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.</div>

            <div class="registerForm">
                <label for="username" class="blind">NAME&nbsp&nbsp</label>
                <input id="username" size="30" type="text">
            </div>

        </div>

        <%--유효성 검사 안내란--%>
        <div id="check"></div>

        <%--login/back 버튼--%>
        <button id="registerBtn" class="button">register</button>
        <button class="button" onclick="location.href='/';">back</button>
    </div>
</div>
</form>
</body>
</html>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
    //회원가입 버튼
    $('#registerBtn').click(function(){
        $('#check').empty();

        if($('#userid').val() == '')
            $('#check').text('아이디를 입력해 주세요.');
        else if($('#userpwd').val() == '')
            $('#check').text('비밀번호를 입력해 주세요.');
        else if($('#valCheck').val() != $('#userid').val()){
            $('#idcheck').empty();
            $('#idcheck').text('아이디 중복체크 하세요.');
        }
        else
            $.ajax({
                type: 'post',
                url: '/user/register',
                data: $('#registerForm').serialize(),
                success: function(data){
                    alert('회원가입을 축하');
                    location.href="/";
                },
                error: function(error) {
                    alert(error);
                }
            });
    });

    //아이디 중복체크
    $('#valBtn').focusout(function(){
        // $('#idcheck').empty();

        var id = $('#userid').val();

        if(id == '') {
            $('#check').text('먼저 아이디를 입력해 주세요.');
        } else {
            $.ajax({
                type: 'post',
                url: '/user/valCheck',
                data: 'id = ' + id,
                success: function(data){
                    data = data.trim();
                    alert(data);

                    if(data=='exist'){
                        $('#idcheck').text('이미 존재하는 아이디입니다.');
                    } else {
                        $('#idcheck').text('사용 가능한 아이디입니다.');
                        $('#valCheck').val(id);
                    }
                },
                error: function(error) {
                    alert(error);
                }

            });

        }

    });

</script>

