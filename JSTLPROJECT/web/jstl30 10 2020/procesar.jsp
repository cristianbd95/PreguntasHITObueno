<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h3 {
                text-decoration: underline;
                color: blue;
            }
            h4 {
                color: red;
            }
        </style>
    </head>
    <body>
        <c:set var="numero1" scope="session" value="${param.txtN1}"/>
        <c:set var="numero1" scope="session" value="${param.txtN2}"/>
        <c:set var="suma" scope="session" value="${numero1+numero2}"/>
        suma= <c:out value="${suma}"/>
        
    </body>
</html>
