<html>
<body>
<%@page session="true" %>
<%
String s1=(String)request.getAttribute("iid");
String s2=(String)request.getAttribute("iname");
String s3=(String)request.getAttribute("sid");
String s4=(String)request.getAttribute("sname");
session.setAttribute("iid",s1);
session.setAttribute("iname",s2);
session.setAttribute("sid",s3);
session.setAttribute("sname",s4);
response.sendRedirect("afterslogin2.jsp");
%>
</body>
</html>