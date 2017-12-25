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
        body {font: normal 100% Helvetica, Arial, sans-serif;}

    </style>  
</head>
<body>
<s:actionmessage/>
<div class="container" style="margin-top: 80px;">
    <form class="form-signin" method="post" action="login_login">
    	<p style="text-align:right;"><button class="btn btn-large btn-primary" type="button" onclick="javascrtpt:window.location.href='index.jsp'">主页</button></p>
        <h2 class="form-signin-heading" style="text-align:center">预约系统</h2>
        <p dir="rtl">:预约医生</p>
        <p dir="rtl">:预约病人</p>
        <form action="">
        	<br/>选择科室:<select name="cars">
				<option value="volvo">Volvo</option>
				<option value="saab">Saab</option>
				<option value="fiat">Fiat</option>
				<option value="audi">Audi</option>
			</select>
			<br/>选择医生:<select name="cars">
				<option value="volvo">Volvo</option>
				<option value="saab">Saab</option>
				<option value="fiat">Fiat</option>
				<option value="audi">Audi</option>
			</select>
			<input type="text" id="startrm" onkeyup="query()" />
			<p style="text-align:center"><button class="btn btn-large btn-primary" type="submit">预约</button></p>
			<p style="text-align:center"><button class="btn btn-large btn-primary" type="button">打印</button></p>
		</form>
    </form>
</div>
<script> 
	// 模糊查询
	 function query(){
	     $('#startrm').autocomplete({
	                source : "你的后台URL查询"
	            });
	 }
 </script>
</body>
</html>