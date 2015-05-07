
<%@page import="java.sql.DriverManager"%>
<html>
<head>
<title>afteredetails</title>
</head>
<BODY bottomMargin=0 aLink=#f0f0f0 leftMargin=90 rightMargin=90 link=#f0f0f0
topMargin=5  vLink=#f0f0f0 background="bkgrnd.jpg" >
<TABLE width="100%" bgColor=#4e9258>
<TABLE width="100%"
bgColor=#54c571>
<TR>
<TD bgColor=#C2C2F0 vAlign=top align=middle><FONT color=#000000
size=3 face=Arial><B><A
href="afterisignup2.jsp">HOME</A></B></FONT></TD>
<TD bgColor=#C2C2F0 vAlign=top align=middle><FONT size=3
face=Arial><B><A href="const.htm">Exam Details
</A></B></FONT></TD>
<TD bgColor=#C2C2F0 vAlign=top align=middle><FONT size=3
face=Arial><B><A
href="const.html">Student List</A></B></FONT></TD>
<TD bgColor=#C2C2F0 vAlign=top align=middle><FONT size=3
face=Arial><B><A
href="const.html"></A></B></FONT></TD>
<TD bgColor=#C2C2F0 vAlign=top align=middle><FONT size=3
face=Arial><A
href="const.html"><B>Questions</B></A></FONT></TD>
<TD bgColor=#C2C2F0 vAlign=top align=middle><FONT size=3
face=Arial><A
href="const.html"><B>Results</B></A></FONT></TD>
<TD bgColor=#C2C2F0 vAlign=top align=middle><FONT size=3
face=Arial><B><A href="const.html">Edit Exam Details
</A></B></FONT></TD>
<TD bgColor=#C2C2F0 vAlign=top align=middle><FONT size=3
face=Arial><B><A
href="logout.jsp">Logout</A></B></FONT></TD></TR></TABLE>
<TABLE width="100%">
<TR>
<TD bgColor=#617c58><B><FONT color=#ffffff size=3 face=Tahoma
center>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
int i=0;
String msg=null;
String ename=request.getParameter("ExamName");
String tlimit=request.getParameter("TimeLimit");
String pmarks=request.getParameter("PassingMarks");
String nques=request.getParameter("NoOfQue");
String nmarks=request.getParameter("NegativeMarks");
String posmarks=request.getParameter("PositiveMarks");

Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
              PreparedStatement stmt=con.prepareStatement("insert into edetails values(?,?,?,?,?,?)");
              stmt.setString(1, ename);
              stmt.setString(2, tlimit);
              stmt.setString(3, pmarks);
              stmt.setString(4, nques);
              stmt.setString(5, nmarks);
              stmt.setString(6, posmarks);

               i=stmt.executeUpdate();

               if(i>0)
                  msg="Record Added";
              else
                  msg="Some Problem Occurred";
               request.setAttribute("msg",msg);   
               response.sendRedirect("layout.jsp");
                  
%>
<TABLE width="100%" align=center>
<tbody>
<tr>
<td align=center><b><h2>Exam details have been successfully entered.</h2></b></td>
</tr>
<tr>
<td><a href="afterisignup2.jsp">BACK</td>
</tr>
</tbody></table>
</table>
</table>
</body>
</html>