<%-- 
    Document   : jstl3
    Created on : 30-oct-2020, 12:04:41
    Author     : Campus FP
--%>
<%@page import="srcjstl.MetodosArchivo2"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

<form action="jstl3.jsp" method="post">
    <input type="radio" name="pagina" value="pagina1">
    <label for="male">Marca</label><br>
    <input type="radio" name="pagina" value="pagina2">
    <label for="female">Sport</label><br>
    <input type="radio" name="pagina" value="pagina3">
    <label for="other">Mundodeportivo</label>
    <input type="radio" name="pagina" value="pagina4">
    <label for="other">As</label>
    <br>
    <input type="submit" value="enviar">
</form>

<c:set var="parametro" scope="session" value="${param.pagina}"/>



<c:choose>
    <c:when test = "${parametro eq 'pagina1'}">
            <c:redirect url="http://marca.com"/> 
    </c:when>
    <c:when test = "${parametro eq 'pagina2'}">
        <c:redirect url="http://sport.es"/>
    </c:when>
    <c:when test = "${parametro eq 'pagina3'}">
        <c:redirect url="http://mundodeportivo.com"/>
    </c:when>
    <c:when test = "${parametro eq 'pagina4'}">
        <c:redirect url="http://as.com"/>
    </c:when>
</c:choose>

