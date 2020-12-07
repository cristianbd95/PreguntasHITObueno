<%@page import="misrc.Alumno"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Hashtable"%>
<%@page import="misrc.Profesor"%>
<%@page import="misrc.MisMetodos"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>



<%
  /*  int c = 0;
    
    Hashtable<Integer, String> alumnos_ht = (Hashtable) application.getAttribute("alumnos_hta");
    if (alumnos_ht == null) {
        alumnos_ht = new Hashtable<Integer, String>();
    }
    
    alumnos_ht.put(c++, );
    application.setAttribute("alumnos_hta", alumnos_ht); */
  
    String sRuta = "C:\\Users\\Campus FP\\Documents\\NetBeansProjects\\Profesores\\web\\";
    MisMetodos m = new MisMetodos();
    
    String login = (String) session.getAttribute("login_s");
    String password = (String) session.getAttribute("password_s");
  
%>

<%
  /* for(Map.Entry m:alumnos_ht.entrySet()) {
       out.println(m.getKey() + "  " + m.getValue() + "</br>");
   }
*/
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body BGCOLOR="#FDF5E6">

    <center>
        <h1>PERSONAS</h1>
        <h2>Lista de todas las personas:</h2>
        <ol>
            <li>Primera lectura:<br>
                <jsp:include page="profe1.jsp" flush="true" />
            <li>Segunda lectura:<br>
                <jsp:include page="profe2.jsp" flush="true" />
            <li>Tercera lectura:<br>
                <jsp:include page="profe3.jsp" flush="true" />
        </ol>
    </center>
</body>
</html>