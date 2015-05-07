<%-- 
    Document   : stulogin
    Created on : Dec 30, 2013, 12:36:09 AM
    Author     : benjamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="a" %><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a:form action="/sl" onsubmit="return verify()">
<TABLE width="100%"  height=500 bgcolor=#D6D6F5 align=center>
<tbody>
<tr>
<td width=40%><img src="login3.jpg" width=200 height=150></td>
<td><font size=5><b>Student Login Form</b></font></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<td align=right><b><font color=#df2332 size=3>Student ID:</font></b></td>
<td><a:text property="studentid"/></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>Student Name:</font></b></td>
<td><a:text property="studentname"/></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>Institute Code:</font></b></td>
<td><a:password property="institutecode" /></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
    <td align=right><a:submit title="Submit"/></td>
<td><Input type=button value=Abort onClick="Abort()"></td>
</tr>
</tbody>
</table>
<
    </body>
</html>
