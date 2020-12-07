

<%@page import="misrc.Alumno"%>
<%@page import="misrc.Profesor"%>
<%@page import="misrc.MisMetodos"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>

<%
    //String sRuta = request.getContextPath() + "/web/jspcsv/alumno.csv";
    MisMetodos m = new MisMetodos();

    String login = (String) session.getAttribute("login_s");
    String password = (String) session.getAttribute("password_s");
    
    String sRuta = "C:\\Users\\Campus FP\\Documents\\NetBeansProjects\\Profesores\\web\\" + "alumnos" + login + ".csv";
    
    
        
    if(login.equals("Miguel")){   
        out.println(login + " " + password + "<br>");
        out.println( sRuta + "<br>");
        List<Alumno> alumnos_al = m.leer2(sRuta);
        if(alumnos_al != null){
            if(alumnos_al.size()>0){
            out.println("<table border='1'>");
                out.println("<tr>");
                    out.println("<th>NOMBRE </th>");     
                    out.println("<th> FECHA NACIMIENTO</th>");
                    out.println("<th> CIUDAD</th>");
                out.println("</tr>");


            for (int i = 0; i<alumnos_al.size(); i++){
                Alumno alumno = (Alumno)alumnos_al.get(i);
                out.println("<tr>");
                    out.println("<td>" + alumno.getNombre() + "</td>");
                    out.println("<td>" + alumno.getFecha() + "</td>");
                    out.println("<td>" + alumno.getNota() + "</td>");
                out.println("</tr>");   
            }
            out.println("</table>");
            }else{
                out.println("No hay registros");
            }
        }else{
                out.println("Error lectura <br>");
                }
    
    }
%>