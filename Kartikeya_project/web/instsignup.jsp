<%-- 
    Document   : instsignup
    Created on : Dec 26, 2013, 2:24:59 AM
    Author     : benjamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="k" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
        <body>
<TABLE width="100%" bgcolor=#ffffff align=center>

<TABLE width="100%" bgcolor=#ffffff align=center>
<tr>
<td align=""><font size=7><b>Institute SignUp Form</b></font></td>
</tr>
</TABLE>
        <TABLE width="100%" bgcolor=#ffffff align=center><k:form action="/instsignupdo" method="post" >
<tr>
    <td align="center" colspan="2"><h2><b>Enter the Institute details:</b></h2></td>
</tr>
<tr>
<td align=right width="50%"><b><font color=#df2332 size=4>Login Name:</font></b></td>
<td><k:text property="loginname" /></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=4>Institute Name:</font></b></td>
<td><k:text property="institutename"/></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=4>Email Address:</font></b></td>
<td><k:text property="email"/></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=4>Password:</font></b></td>
<td><k:password property="password"/></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=4>Confirm Password:</font></b></td>
<td><k:password property="confirmpassword"/></td>
</tr>
</tbody>
</TABLE>
<TABLE width="100%" bgcolor=#ffffff align=center>
<tbody>
<tr>
<td>&nbsp</td>
<td align="center" colspan="4"><k:submit title="Submit" />
    <k:reset title="Reset" />
<!--<input type="button" value="Abort" onClick="Abort()"/>-->
</td>
</tr>
</tbody>
</TABLE></k:form>
<TABLE width="100%" bgcolor=#ffffff align=center>
<tbody>
<tr>
<td><font color=grey face=Verdana size=2><b>PASSWORD RULES:</b></font></td></tr>
<tr>
<td><font color=grey face=Verdana size=1><b>Password's minimum length is 5
charcters.</b></font></td></tr>
<tr>
<td><font color=grey face=Verdana size=1><b>Password's maximum length is 8
characters.</b></font></td></tr>
<tr>
<td><font color=grey face=Verdana size=1><b>Password should have atleast 1 digit
included.</b></font></td></tr>
<tr>
<td><font color=grey face=Verdana size=1><b>Other than alphabets and digits no other values are
allowed.</b></font></td></tr>
</tbody></TABLE>
<br>

            
    </body>
</html>
