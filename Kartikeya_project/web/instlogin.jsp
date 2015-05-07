<%-- 
    Document   : instlogin
    Created on : Dec 26, 2013, 3:33:39 AM
    Author     : benjamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="p" %>
<!DOCTYPE html>
<html>
    
<head>
<title>Institute login</title>
<script language="JavaScript">
function verify(){
var flag=0;
for(i=0;i<=1;i++){
if(document.forms[0].elements[i].value==""){
alert("Please fill in the "+ document.forms[0].elements[i].name +" field");
document.forms[0].elements[i].focus();
flag=1;
break;
}
}
if(flag==1){
return(false);
}
return(true);
}
function Abort(){
history.back();
}
</script></head>
<BODY bottomMargin=0 aLink=#f0f0f0 leftMargin=90 rightMargin=90 link=#f0f0f0
topMargin=5  vLink=#f0f0f0 background="C:\Users\priyanka\Desktop\PRO\bkgrnd.jpg" >
    <p:form action="/ila" method="post"  onsubmit="return verify()">
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%" bgcolor=#ffffff align=center>
<tbody>
<tr>
<td width=40%>
<td><font size=5><b>Institute Login Form</b></font></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr><tr>
<td align=right><b><font color=#df2332 size=3>Login Name:</font></b></td>
<td><p:text property="loginname"  /><tr>
    <tr><td align=right><b><font color=#df2332 size=3>Password:</font></b></td>
        <td> <p:password property="password" /></td>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
    <td align=right><p:submit styleClass="button" title="Submit"/></td>
        <td><p:reset title="Reset"/></td>
</tr>
<tr>
</tbody>
</table>
            </p:form>>
    </body>
</html>
