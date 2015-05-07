<%@taglib uri="http://struts.apache.org/tags-html" prefix="p"  %><html>
<head>
<title>Exam Details</title>
<script language="JavaScript">
var valueofpass1="";
var valueofpass2="";
var whitespace="\t\n\r";
function isEmpty(s)
{
return((s==null)||(s.length==0))
}
function isNumber(string,bag){
var i,flag;
flag=1;
for(i=0;i<string.length;i++){
var charval=string.charAt(i);
if(bag.indexOf(charval)==-1){
flag=0;
break;
}
}
if(flag==1) {
return true;
}
else{
return false;
}
}
function verify(){
var flag=0;
for(i=0;i<6;i++){
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
if(flag==0){
var tim = document.forms[0].elements[1].value;
if(!isNumber(tim,"1234567890"))
{ alert("Invalid Time.Enter time in minutes");
document.forms[0].elements[1].focus;
return(false);
}
for(i=2;i<6;i++) {
if(i==3) continue;
var marks = document.forms[0].elements[i].value;
if(!isNumber(marks,"1234567890."))
{
alert("Invalid "+ document.forms[0].elements[i].name+". Enter only numbers.");
document.forms[0].elements[i].focus;
return(false);
}
}
var nquestn = document.forms[0].elements[3].value;
if(!isNumber(nquestn,"1234567890"))
{ alert("Invalid No. Of questions");
document.forms[0].elements[3].focus;
return(false);
}
}
return(true);
}
function Abort(){
history.back();
}
</script>

<%
String name=(String)session.getAttribute("LoginName");
String password=(String)session.getAttribute("Password");
%>
<body>
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%" bgcolor=#ffffff align=center>
<tbody>
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%" bgcolor=#ffffff align=center>
<tbody>
<tr>
<td width=40% align="left"><img src="exams.jpg" width=200 height=150></td>
<td align="left"><font size=7><b>Exam Details</b></font></td>
</tr>
</tbody>
</TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%" bgcolor=#ffffff align=center>
    <tbody><p:form action="/af" onsubmit="return verify()">
<tr>
<td align=center colspan="2"><b><h2>Enter the examination details:</h2></b></td>
</tr>
<tr>
<td align=right width="50%"><b><font color=#df2332 size=3>Exam Name:</font></b></td>
<td align="left"><p:text property="f1"/></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>Time Limit:</font></b></td>
<td align="left"><p:text property="f2" />( In Minutes )</td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>No. of Question:</font></b></td>
<td align="left"><p:text property="f3"/></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>Passing Marks:</font></b></td>
<td align="left"><p:text property="f4"/></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>Positive Marks:</font></b></td>
<td align="left"><p:text property="f5"/></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>Negative Marks:</font></b></td>
<td align="left"><p:text property="f6"/></td>
</tr>
</tbody>
</TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%" bgcolor=#ffffff align=center>
<tbody>
<tr>
<td>&nbsp</td>
<td align="center" colspan="4"><p:submit title="Submit" />
<input type="reset" value="Reset" />
<input type="button" value="Abort" onClick="Abort()"/></td>
</tr>
<tr>
<td>&nbsp</td>
</tr>
</tbody>
</TABLE>
    </p:form>
</body></html>