<%@taglib  prefix="a" uri="http://struts.apache.org/tags-html" %>
<html>
<head>
<title>Student Details</title>
<script language="JavaScript">
function verify(){
var flag=0;
for(i=0;i<=2;i++){
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
<TABLE width="100%" bgColor=Lavender>
<TR>
<TD vAlign=top align=middle>

<a:form action="/sdetailsaction"  onsubmit="return verify()">
<TABLE width="100%"  height=500 bgcolor=#D6D6F5 align=center>
<tbody>
<tr>
<td width=40%><img src="dd.jpg" width=200 height=150></td>
<td><font size=5><b>Student Login Form</b></font></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<td align=right><b><font color=#df2332 size=3>Enrollment No:</font></b></td>
<td><a:text property="studentid"/></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>Student Name:</font></b></td>
<td><a:text property="studentname"/></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
    <td align=right><a:submit title="submit"/></td>
<td><Input type=button value=Abort onClick="Abort()"></td>
</tr></a:form>
</tbody>
</table>
</form>
</body>
</html>