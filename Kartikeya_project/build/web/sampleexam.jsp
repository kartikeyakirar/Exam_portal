<%--
    Document   : os2
    Created on : Nov 9, 2013, 4:39:58 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
   <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<meta http-equiv="refresh" content="<%= session.getMaxInactiveInterval() %>;url=os3.jsp">
</head>
    <body bgcolor=Lavender>
        <h1>TOC Quiz!!!</h1><br><br>
        1. What does toc stand for
        <input type="radio" value="op1" name="option"/> Theory Of Computation <br><br>
        <input type="radio" value="op2" name="option"/> Theory Of Compiler<br><br>
        <input type="radio" value="op3" name="option"/>Theory Of Computer<br><br>
        <input type="radio" value="op4" name="option"/>none of the above<br><br>
        <input type="submit" value="next"/>
        <input type="submit" value="skip" onclick="document.location='result.jsp'" />
        <br><br>
           This exam will exire in <%= session.getMaxInactiveInterval() %> seconds.<br/>
    </body>
</html>