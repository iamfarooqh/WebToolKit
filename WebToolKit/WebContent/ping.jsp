<%@page import="javax.swing.text.html.HTML"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
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
a {
text-align: center;
}
</style>

</head>
<body>
<div class="header-cont">
<div class="header">
<center><h2>Ping Tool</h2></center>
</div> </div>
    <div class ="content">
<a href="index.jsp">Home</a>
<center>
<br><br>
<h3>Kindly provide the IP address below. Thank you!</h3>

<form name="myForm">
       <input type="text" name="address" placeholder="10.77.45.1" required/> 
        <input type="submit" value="Ping now" onclick="res"/>
        
    </form>
    
 

<br><br>

<form name="result" id="res" >
<textarea rows="20" cols="70">
<%
String cmd = "ping " + request.getParameter("address") + " -c 4";  
if (cmd.contains(".")){
Runtime run = Runtime.getRuntime(); 
Process pr = run.exec(cmd); 
pr.waitFor();
BufferedReader buf = new BufferedReader(new InputStreamReader(pr.getInputStream())); 
String line = ""; 

while ((line=buf.readLine())!=null) { 
	
out.println(line);
	}
}
%>
</textarea>
</form>

</center></div>
</body>
</html>