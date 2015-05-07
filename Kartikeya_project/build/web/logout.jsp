<%-- 
    Document   : logout
    Created on : Dec 26, 2013, 11:19:57 AM
    Author     : benjamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <% HttpSession see =request.getSession(false);
     see.invalidate();
     see.removeAttribute("instname");
     response.sendRedirect("layout.jsp");
     %>
    </body>
</html>
