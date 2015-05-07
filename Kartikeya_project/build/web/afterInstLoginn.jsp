<%-- 
    Document   : afterInstLoginn
    Created on : Dec 29, 2013, 3:52:30 PM
    Author     : benjamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://struts.apache.org/tags-html" prefix="p" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>project</title>
    </head>
    <body>
       <TABLE  width="100%">
<TR>
<TD bgColor=#c0c0c0 vAlign=top width="18%" align=middle>&nbsp;
<TABLE width="100%"
bgColor=	#A3A3FF>
<TR>
<TD bgColor=#54c571 width="100%" height=40><FONT size=4
face=Arial><B><center><B>OPTIONS</B></FONT></TD></TR>
<TR>
<TD  width="100%" height=40><FONT size=4
                                              face=Arial><B><p:link action="/edetails" >Enter Exam Details</p:link></B></FONT></TD></TR>
<TR>
<TD  width="100%" height=40><FONT size=4
face=Arial><B><p:link action="/qdetails">Enter Questions
    </p:link> </B></FONT></TD></TR>
<TR>
<TD width="100%" height=40><FONT size=4
                                              face=Arial><B><p:link action="/sdetails">Enter Student List</p:link>
</FONT></B></TD></TR>
<TR>
<TD  width="100%" height=40><FONT size=4
                                              face=Arial><B><FONT size=2 face=Arial><p:link action="/const">Delete Questions</p:link></FONT></B></TD></TR>
<TR>
<TD  width="100%" height=40><FONT size=4
face=Arial><B><FONT size=2
face=Arial><B><p:link action="/const">Delete Students
        </p:link></B></FONT></B></TD></B></TR><font size="-3">welcome|${inst}</TABLE>
    </body>
</html>
