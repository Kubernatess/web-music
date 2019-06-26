<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>register</title>
<link href="css/register.css" rel="stylesheet" type="text/css">
</head>

<body>
<form action="/MyNetdisk/registerServlet" method="GET" name="registerForm" validate >
  <fieldset>
    <legend>Register</legend>
    <p>用户名*</p><input name="username" id="username" type="text" v-model="username" />    
    <p>密码*</p><input name="password" id="password" type="password" v-model="password" />   
    <p>确认密码*</p><input name="comfirm" id="comfirm" type="password" v-model="comfirm" />
    <p>电话/手机号*</p><input name="telephone" type="text" placeholder="选填" />
    <p>邮箱*</p><input name="email" type="email" placeholder="选填" />
    <br/><br/>
    <input type="button" name="submission" value="提交" @click="check" ><br/><br/>
  </fieldset>
</form>

</body>
</html>