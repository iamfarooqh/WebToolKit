<%@page import="javax.swing.text.html.HTML"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ping Tool</title>
<style type="text/css">
body{
    margin:0px;
   
}
.header-cont {
    width:100%;
    position:fixed;
    top:0px;
}
.header {
    height:50px;
    background:#F0F0F0;
    border:1px solid #CCC;
    width:960px;
    margin:0px auto;
    color: #7aa4d3;
}
.content {
    width:960px;
    background: #F0F0F0;
    border: 1px solid #CCC;
    height: 500px;
    margin: 70px auto;
}
</style>

</head>
<body>
<div class="header-cont">
<div class="header">
<center><h2>Web Tool Kit</h2></center>
</div> </div>
    <div class ="content">

<center>
<br><br><br><br>
<h3>Access your Tools Here:</h3>
<form name="myForm" action="ping.jsp"> 
        <input type="submit" value="Ping Tool"/>
    </form>
    
 

<br><br>

</center></div>
</body>
</html>