

<%@page import="misrc.Profesor"%>
<%@page import="java.util.List"%>
<%@page import="misrc.MisMetodos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    MisMetodos m = new MisMetodos();
    String sLogin;
    String sPassword;
    int c = 0;
    

%>


<%
    sLogin = request.getParameter("txtLogin");
    sPassword = request.getParameter("txtPassword");

    session.setAttribute("login_s", sLogin);
    session.setAttribute("password_s", sPassword);
    if (request.getParameter("btoComprobar") != null) {
    }

    sLogin = request.getParameter("txtLogin");
    sPassword = request.getParameter("txtPassword");

    String sRuta = "C:\\Users\\Campus FP\\Documents\\NetBeansProjects\\Profesores\\web\\profesores.csv";
    MisMetodos m = new MisMetodos();

    if (request.getParameter("btoComprobar") != null) {
        out.println("<h3>MOSTRAR</h3>" + sRuta + "<br>");
        List<Profesor> profesors_al = m.leer(sRuta);
        if (profesors_al != null) {
            if (profesors_al.size() > 0) {
                for (int i = 0; i < profesors_al.size(); i++) {
                    Profesor profesor = (Profesor) profesors_al.get(i);
                    if (sLogin == profesor.getLogin() && sPassword == profesor.getContraseña()) {

                    }
                }
                response.sendRedirect("index.jsp");
            } else {
                out.println("No hay registros");
            }
        } else {
            out.println("Error lectura <br>");
        }
    }


%>





<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            fieldset{
                width: 290px;
                align: center;
                margin-left: 40%;
                margin-top: 4%;
                color: blue;
                background-color: lightblue;
                font-size:14px;
                padding:10px;
                width:250px;
                line-height:1.8;
                border: 4px solid red;
            }
            h3{
                text-decoration: underline;
                color: blue;
            }
            h4{
                color: red;
            }
        </style>
    </head>
    <body>
        <form action="pagina1.jsp" method="post">
            <fieldset>
                <legend> Ingresar Datos: </legend>
                <p>
                    <label for="lblLogin">Login</label>
                    <input type="text" name="txtLogin" value="<%= sLogin%>">

                    <label for="lblPassword">Password</label>
                    <input type="text" name="txtPassword" value="<%= sPassword%>">


                </p>
                <p>

                    <input type="submit" name="btoComprobar" value="Crear">
                </p>
            </fieldset>

        </form>
    </body>
</html>
