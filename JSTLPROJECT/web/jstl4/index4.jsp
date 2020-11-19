<%@page import="srcjstl.Medicos"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashSet"%>
<%@page import="srcjstl.Medico"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="srcjstl.MetodosArchivo2"%>
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
    String nombreArchivo = "datos.csv";
    String rutaAbsolutaArchivo = f.getAbsolutePath() + "\\jstl4\\datos\\" + nombreArchivo;

    MetodosArchivo2 m = new MetodosArchivo2();
    List<Medico> medicos_al = m.leerM(rutaAbsolutaArchivo);
    request.setAttribute("medicos_vs", medicos_al);
    Set<String> cadenas_hs = new HashSet();
    List<Medico> personas_al = m.leerM(rutaAbsolutaArchivo);

    if (medicos_al != null) {
        if (personas_al.size() > 0) {

            for (int i = 0; i < medicos_al.size(); i++) {
                Medico medico = (Medico) medicos_al.get(i);
                cadenas_hs.add(medico.getNombre());
            }

        } else {
            out.println("No hay registros");
        }
    } else {
        out.println("Error lectura <br>");
    }


%>


<form action="index4.jsp" method="post">
    <select name="cboMedicos">  
        <%            List<String> cadenas_al = new ArrayList<String>(cadenas_hs);

            //for (String cadena : cadenas_hs) {
            //cadenas_al.add(cadena);
            //}
            Collections.sort(cadenas_al);
            for (int i = 0; i < cadenas_al.size(); i++) {

        %>

        <option value="<%= i%>"> <%= cadenas_al.get(i)%> </option>

        <%
            }
        %>
    </select>
    <select name="cboAno">
        <option value="2012">2012</option>
        <option value="2013">2013</option>
        <option value="2014">2014</option>
        <option value="2015">2015</option>
        <option value="2016">2016</option>
        <option value="2017">2017</option>
    </select>
    <input type="submit" name="btoEnviar" value="Enviar">
</form>
<br><br>






<%
    if (request.getParameter("btoEnviar") != null) {
        String recuperarAno = request.getParameter("cboAno");
        String indiceSelect = request.getParameter("cboMedicos");
        int[] meses = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        String[] parte;

        for (int i = 0; i < medicos_al.size(); i++) {
            Medico medico = (Medico) medicos_al.get(i);
            parte = medico.getFecha().split("/");
            //out.println(recuperarAño);

            if (cadenas_al.get(Integer.parseInt(indiceSelect)).equals(medico.getNombre()) && parte[2].equals(recuperarAno.trim())) {
                int k = Integer.parseInt(parte[1]) - 1;
                meses[k]++;

            }
        }
        out.println("<table border='1'>");
        out.println("<tr>");
        out.println("<th>ENERO</th>");
        out.println("<th>FEBRERO</th>");
        out.println("<th>MARZO</th>");
        out.println("<th>ABRIL</th>");
        out.println("<th>MAYO</th>");
        out.println("<th>JUNIO</th>");
        out.println("<th>JULIO</th>");
        out.println("<th>AGOSTO</th>");
        out.println("<th>SEPTIEMBRE</th>");
        out.println("<th>NOVIEMBRE</th>");
        out.println("<th>DICIEMBRE</th>");
        out.println("</tr>");
        out.println("<tr>");
        for (int i = 0; i < 11; i++) {
            out.println("<td>" + meses[i] + "</td>");
        }
        out.println("</tr>");
        out.println("</table>");
    }


%>

