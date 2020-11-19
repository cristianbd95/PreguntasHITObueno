


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


<form action="index.jsp" method="post">
    <select name="cboMedicos">  
        <%            List<String> cadenas_al = new ArrayList<String>();

            for (String cadena : cadenas_hs) {
                cadenas_al.add(cadena);
            }
            Collections.sort(cadenas_al);
            for (int i = 0; i < cadenas_al.size(); i++) {

        %>

        <option value="<%= i%>"> <%= cadenas_al.get(i)%> </option>

        <%
            }
        %>
    </select>
    
   
    <input type="submit" name="btoEnviar" value="enviar">
    <br>
     <select name="cboOrdenar">
        <option value="1">Por nombre</option>
        <option value="2">Por fecha</option>
        <option value="3">Por ID descendente</option>
    </select>
    <input type="submit" name="btoOrdenar" value="ordenar"
</form>
<br><br>

<%
    int contC = 0;
    int contI = 0;
    int contL = 0;
    List<String> medicosCont_al = new ArrayList<String>();
    String indiceSelect = request.getParameter("cboMedicos");
    String indiceOrd = request.getParameter("cboOrdenar");
    MetodosArchivo2 m2 = new MetodosArchivo2();
    
    
    if (request.getParameter("btoEnviar") != null) {
        
        if (medicos_al != null) {
            if (personas_al.size() > 0) {
                for (int j = 0; j < cadenas_al.size(); j++) {
                    contC = 0;
                    contI = 0;
                    contL = 0;
                    for (int i = 0; i < medicos_al.size(); i++) {
                        Medico medico = (Medico) medicos_al.get(i);
                        if (cadenas_al.get(j).equals(medico.getNombre()) && medico.getEspecializacion().equals("CESAREA")) {
                            contC = contC + 1;
                        }
                        if (cadenas_al.get(j).equals(medico.getNombre()) && medico.getEspecializacion().equals("INDUCCION")) {
                            contI = contI + 1;
                        }
                        if (cadenas_al.get(j).equals(medico.getNombre()) && medico.getEspecializacion().equals("LEGRADO")) {
                            contL = contL + 1;
                        }
                    }
                    medicosCont_al.add("Numero de Cesareas: " + String.valueOf(contC) + "<br> Numero de Inducciones: " + String.valueOf(contI) + "<br> Numero de Legrados: " + String.valueOf(contL)+"<br><br>");
                }
            } else {
                out.println("No hay registros");
            }
        } else {
            out.println("Error lectura <br>");
        }
        for (int i = 0; i < medicosCont_al.size(); i++) {
            if (i == Integer.parseInt(indiceSelect)) {
                out.println(medicosCont_al.get(i) + "<br>");
            }
        }

    }

    if (medicos_al != null) {
        if (personas_al.size() > 0) {
            out.println("<table border='1'>");
            out.println("<tr>");
            out.println("<th>ID</th>");
            out.println("<th>FECHA</th>");
            out.println("<th> NOMBRE</th>");
            out.println("<th> SEXO</th>");
            out.println("<th> INTERVENCION</th>");
            out.println("</tr>");

            m2.ordenarObjetos(medicos_al);
            
            for (int i = 0; i < medicos_al.size(); i++) {
                Medico medico = (Medico) medicos_al.get(i);
                out.println("<tr>");
                out.println("<td>" + medico.getId() + "</td>");
                out.println("<td>" + medico.getFecha() + "</td>");
                out.println("<td>" + medico.getNombre() + "</td>");
                out.println("<td>" + medico.getSexo() + "</td>");
                out.println("<td>" + medico.getEspecializacion() + "</td>");
                // out.println("<td>" + medico.getFecha_nac() + "</td>");
                // out.println("<td>" + medico.getCiudad() + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
        } else {
            out.println("No hay registros");
        }
    } else {
        out.println("Error lectura <br>");
    }

%>