<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<base href="<%=basePath%>">
	<s:property value="#request.msg"/>
    <title>后台管理系统</title>
	<meta charset="UTF-8">
   <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />
    <script type="text/javascript" src="Js/jquery.js"></script>
    <script type="text/javascript" src="Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="Js/bootstrap.js"></script>
    <script type="text/javascript" src="Js/ckform.js"></script>
    <script type="text/javascript" src="Js/common.js"></script>
    <style type="text/css">
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 300px;
            padding: 19px 29px 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
        }

        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }

        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }
        .form-signin  textarea {
		    width: 100%;
		    height: auto;
		}
		body {font: normal 100% Helvetica, Arial, sans-serif;}
	
    </style>  
</head>
<body>
<s:actionmessage/>
<div class="container" style="margin-top: 80px;">
    <form class="form-signin" method="post" action="login_login">
    	<p style="text-align:right;"><button class="btn btn-large btn-primary" type="button" onclick="javascrtpt:window.location.href='index.jsp'">主页</button></p>
        <h2 class="form-signin-heading" style="text-align:center">历史预约</h2>
        <input type="text" name="username" class="input-block-level" placeholder="姓名">
        <input type="password" name="pwd" class="input-block-level" placeholder="性别">
        <input type="password" name="pwd" class="input-block-level" placeholder="身份证">
        <input type="password" name="pwd" class="input-block-level" placeholder="手机">
        <textarea readonly="readonly">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</textarea>
    </form>
</div>
</body>
</html>