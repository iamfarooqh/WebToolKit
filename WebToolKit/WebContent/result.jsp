<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>

<center>

<br><br><br><br><br><br><br><br><br><br>

<textarea rows="10" cols="70">
<%
String cmd = "ping " + request.getParameter("address") + " -c 4";  
Runtime run = Runtime.getRuntime(); 
Process pr = run.exec(cmd); 
pr.waitFor();
BufferedReader buf = new BufferedReader(new InputStreamReader(pr.getInputStream())); 
String line = ""; 

while ((line=buf.readLine())!=null) { 
	
out.println(line);
	}
%>

</textarea>

</center>
</body>
</html>