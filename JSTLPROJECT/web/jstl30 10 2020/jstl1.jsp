<%-- 
    Document   : jstl1
    Created on : 30-oct-2020, 9:23:17
    Author     : Campus FP
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <%-- DECLARACION DE UNA VARIABLE --%>
        <c:set var="cantidad" scope="session" value="${100*4}"/>
        <%-- MOSTRAR EL CONTENIDO DE UNA VARIABLE --%>
        <c:out value="${cantidad}"/>
        cantidad = <c:out value="${cantidad}"/><br>

    <c:set var="numero1" scope="session" value="${4}"/>
    <c:set var="numero2" scope="session" value="${7}"/>
    <c:set var="suma" scope="session" value="${numero1+numero2}"/>
    suma= <c:out value="${suma}"/>

    <%-- FOREACH --%>
    <c:forEach var = "i" begin = "1" end = "5">
        Numero: <c:out value = "${i}"/><br/>
    </c:forEach>


    <%-- CHOOSE --%>
    <br/>

    <c:set var = "salario" scope = "session" value = "${2000*2}"/>
    <p>Su salario es : <c:out value = "${salario}"/></p>
    <c:choose>
        <c:when test = "${salario <= 0}">
            Saliro muy bajo para sobrevivir.<br/>
        </c:when>

        <c:when test = "${salario > 2000}">
            Saliro es muy bueno<br/>
        </c:when>

        <c:otherwise>
            Salario regular<br/>
        </c:otherwise>
    </c:choose>
            
            
    <%-- REDIRECCIONAR UNA URL --%>
    <c:set var="url" value="0" scope="request"/>
    <c:if test="${url<1}">
        <c:redirect url="http://javatpoint.com"/>
    </c:if>
    <c:if test="${url>1}">
       <c:redirect url="http://facebook.com"/>
    </c:if>



</head>
<body>
    <h1>Hello World!</h1>
</body>
</html>
