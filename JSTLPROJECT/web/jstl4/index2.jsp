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


<form action="index2.jsp" method="post">
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






<%   //GUARDO EN ARRAY MEDICOS CON SUS CESAREAS INDUCCIONES Y LEGRADOS PARA IMPRIMIR DESPUÉS
    int contC = 0;
    int contI = 0;
    int contL = 0;
    List<String> medicosCont_al = new ArrayList<String>();
    List<Medicos> medicosX_al = new ArrayList<Medicos>();
    String indiceSelect = request.getParameter("cboMedicos");
    String indiceOrd = request.getParameter("cboOrdenar");
    MetodosArchivo2 m2 = new MetodosArchivo2();
    
    
        String sacarMedico = null;
        if (medicos_al != null) {
            if (personas_al.size() > 0) {
                for (int j = 0; j < cadenas_al.size(); j++) {
                    contC = 0;
                    contI = 0;
                    contL = 0;
                    sacarMedico = null;
                    for (int i = 0; i < medicos_al.size(); i++) {
                        Medico medico = (Medico) medicos_al.get(i);
                        sacarMedico = medico.getNombre();
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
                    if (request.getParameter("btoEnviar") != null) {
                        medicosCont_al.add("Cesareas: " + String.valueOf(contC)+ "<br>Inducciones: " + String.valueOf(contI)+ "<br>Legrados: " + String.valueOf(contL)+ "<br><br>");
                    }
                    Medicos med = new Medicos(cadenas_al.get(j),String.valueOf(contC),String.valueOf(contI),String.valueOf(contL));
                    medicosX_al.add(med);
                    
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
%>


<%  //IMPRIMO AL HACER CLICK EN EL BOTÓN DE ENVIAR DE LA TABLA 
    if (request.getParameter("txhBoton") != null && request.getParameter("txhBoton").equals("Aceptar")) {
        String nombre = request.getParameter("txhNombre");
        for(int i=0; i<medicosX_al.size();i++){
            Medicos medics = (Medicos) medicosX_al.get(i);
            if(nombre.equals(medics.getNombre())){
%>
<br>
            Nombre:<%=nombre%></br>
            Cesareas:<%=medics.getCesareas()%><br>
            Inducciones:<%=medics.getInducciones()%><br>
            Legrados:<%=medics.getLegrados()%><br><br>   
<%
            }
        }
           
    }         
%>
                


<%   //PINTO LA TABLA 
    

    if (medicos_al != null) {
        if (personas_al.size() > 0) {
            out.println("<table border='1'>");
            out.println("<tr>");
            out.println("<th>NOMBRE</th>");
            out.println("<th>CESAREAS</th>");
            out.println("<th> INDUCCIONES</th>");
            out.println("<th> LEGRADO</th>");
            out.println("<th> BOTÓN</th>");
            out.println("</tr>");

            
            for (int i = 0; i < medicosX_al.size(); i++) {
                Medicos med = (Medicos)  medicosX_al.get(i);
                out.println("<tr>");
                out.println("<td>" + med.getNombre() + "</td>");
                out.println("<td>" + med.getCesareas() + "</td>");
                out.println("<td>" + med.getInducciones() + "</td>");
                out.println("<td>" + med.getLegrados() + "</td>");
                
%>
 <script>
            function enviardatos(id) {
                form = document.getElementById("formulario");
                form.nombre.value = id;
                form.boton.value = "Aceptar";
                form.submit();
            }
</script>

          <form action="index2.jsp" id="formulario" method="post">
            <input type="hidden" name="txhNombre" id="nombre">
            <input type="hidden" name="txhBoton" id="boton">
            <td><input type="button" value="enviar" id="<%=med.getNombre()%>" onclick="javaScript:enviardatos(this.id);"></td>
          </form>  
<%
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



   

