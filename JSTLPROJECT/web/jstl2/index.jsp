<%-- 
    Document   : index
    Created on : 30-oct-2020, 10:16:46
    Author     : Campus FP
--%>


<%@page import="srcjstl.Persona"%>
<%@page import="srcjstl.MetodosArchivo2"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <style>
            .mitabla {
                width: 250px;
                border: 1px solid #000;
                border-collapse: collapse;
            }
            .mitabla th, .mitabla td {
                border: 1px solid #000;
            }
        </style>

    </body>
</html>
<%
    File f = new File(application.getRealPath("/"));
    String nombreArchivo = "persona.csv";
    String rutaAbsolutaArchivo = f.getAbsolutePath() + "\\jstl2\\data\\" + nombreArchivo;
    out.println("RutaAbsolutaArchivo = " + rutaAbsolutaArchivo);

    MetodosArchivo2 m = new MetodosArchivo2();
    List<Persona> personas_al = m.leer(rutaAbsolutaArchivo);
    request.setAttribute("personas_vs", personas_al);


%>


<c:choose>
    <c:when test = "${personas_vs != null}">
        <table class="mitabla">
            <tr>
                <th scope="col">NOMBRE</th>
                <th scope="col">NACIMIENTO</th>
                <th scope="col">CIUDAD</th>
            </tr>
            <c:forEach items="${personas_vs}" var="persona"> 
                <tr>
                    <td>${persona.getNombre()}</td>
                    <td>${persona.getFecha_nac()}</td>
                    <td>${persona.getCiudad()}</td>
                </tr>
            </c:forEach>
        </table>
    </c:when>
    <c:otherwise>
        <%="ARRAYLIST NULL"%>
    </c:otherwise>
</c:choose>
