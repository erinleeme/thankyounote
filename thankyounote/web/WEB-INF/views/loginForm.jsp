<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<style type="text/css">

    @font-face {
        font-family: 'ParkYongJun';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_220508@1.0/ParkYongJun.woff2') format('woff2');
        font-weight: normal;
        font-style: normal;
    }

    body {
        background-color: khaki;
    }

    #indexout {
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
        height: 400px;
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
        /*background-color: lightsalmon;*/
        /*border-radius: 30%;*/
        /*width: 300px;*/
        /*text-align: center;*/
    }

    #login {
        /*border: red 1px solid;*/
        font-family: 'ParkYongJun';
        font-size: 40px;
        /*height: 190px;*/
        align-items: center;
        padding:20px ;
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

    .loginForm {
        /*border: blue 1px solid;*/
        text-align: center;
        padding: 10px 0 20px 0;

    }

    #check {
        /*border: #30426E 1px solid;*/
        font-family: 'ParkYongJun';
        font-size: 20px;
        color: coral;
        height: 50px;
    }


</style>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<div id="indexout">
    <a href="/user/register">new</a>
</div>
<div id="indexbox">
    <div id="innerbox">
        <div id="title">
            login
        </div>

        <%--login--%>
        <div id="login">
            <div class="loginForm">
            <label for="userid" class="blind">ID&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
            <input id="userid" size="25" type="text">
            </div>
            <div class="loginForm">
            <label for="userpwd" class="blind">PWD&nbsp&nbsp&nbsp</label>
            <input id="userpwd" size="25" type="password">
            </div>
        </div>

        <%--유효성 검사 안내란--%>
        <div id="check"></div>


        <%--login/back 버튼--%>
        <button id="loginBtn" class="button">login</button>
        <button class="button" onclick="location.href='/';">back</button>
    </div>
</div>

</body>
</html>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
    $('#loginBtn').click(function(){
        $('#check').empty();

        if($('#userid').val()=='')
            $('#check').text('아이디를 입력해 주세요.');
        else if($('#userpwd').val()=='')
            $('#check').text('비밀번호를 입력해 주세요.');
        else {
           $.ajax({
              type: 'POST',
              url: '/user/loginCheck',
              data: {
                   'id': $('#userid').val(),
                   'pwd': $('#userpwd').val()
              },
              dataType: 'text',
              success: function(data){
                  data = data.trim();

                  if(data=='exist'){

                      location.href="/";

                  } else if(data=='non_exist'){
                      $('#check').empty();
                      $('#check').text('아이디 또는 비밀번호를 잘못 입력했습니다.');
                   }
              },
              error: function(err){
                  alert(err);
              }
           });
        }
    });



</script>
