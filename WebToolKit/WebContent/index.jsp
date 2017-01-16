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
</head>
<body>
<center><h1>Ping Tool</h1>

<form name="myForm" target="res">
       <input type="text" name="address" /> 
        <input type="submit" value="Ping now"/>
    </form>

<br><br><br><br>

<form name="result" id="res" >
<textarea rows="20" cols="70">
<%
String cmd = "dig " + request.getParameter("address");  
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

</center>
</body>
</html>