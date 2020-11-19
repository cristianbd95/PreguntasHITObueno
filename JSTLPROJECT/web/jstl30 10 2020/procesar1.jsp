<%-- 
    Document   : procesar1
    Created on : 30-oct-2020, 12:24:58
    Author     : Campus FP
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="parametro" scope="session" value="${param.pagina}}"/>



<c:choose>
    <c:when test = "${parametro == pagina1}">
        <c:redirect url="http://marca.com"/>
    </c:when>

    <c:when test = "${parametro == pagina2}">
        <c:redirect url="http://sport.es"/>
    </c:when>

    <c:when test = "${parametro == pagina3}">
        <c:redirect url="http://mundodeportivo.com"/>
    </c:when>
    <c:when test = "${parametro == pagina4}">
        <c:redirect url="http://as.com"/>
    </c:when>
</c:choose>