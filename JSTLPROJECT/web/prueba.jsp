<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function enviardatos(id) {
                form = document.getElementById("formulario");
                form.identificador.value = id.substr(0, 1);
                form.nombre.value = id.substr(1);
                form.boton.value = "Aceptar";
                form.submit();
            }
        </script>
    </head>
    <body>
        <form action="prueba.jsp" id="formulario" method="post">
            <input type="hidden" name="txhIdentificador" id="identificador">
            <input type="hidden" name="txhNombre" id="nombre">
            <input type="hidden" name="txhBoton" id="boton">
            <table border="1">
                <tr>
                    <td><input type="button" value="Enviar" id="1Walter" onclick="javaScript:enviardatos(this.id);"></td>
                </tr>
                <tr>
                    <td>2</td><td>Arturo</td><td><input type="button" value="Enviar" id="2Arturo" onclick="javaScript:enviardatos(this.id);"></td>
                </tr>
                <tr>
                    <td>3</td><td>Jose</td><td><input type="button" value="Enviar" id="3Jose" onclick="javaScript:enviardatos(this.id);"></td>
                </tr>
            </table>
        </form>
    </body>
</html>


<%
    if (request.getParameter("txhBoton") != null && request.getParameter("txhBoton").equals("Aceptar")) {
        String identificador = request.getParameter("txhIdentificador");
        String nombre = request.getParameter("txhNombre");
%>        
Identificador:<%=identificador%></br>
Nombre:<%=nombre%></br>
<%
    }
%>