<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
            function envia(id) {
                //if(id == "contenido1") {
                   var element = document.getElementById(id);
                   form = document.getElementById("formulario");
                   form.txhContenidoi.value = element.innerHTML;
                   form.submit();
                //}
            }
        </script>
        <form id="formulario">
            <input type="hidden" name="txhContenidon" id="txhContenidoi">
            <table border="1">
                <tr>
                    <td>
                        <h1 id="contenido1" onclick="javaScript:envia(this.id);">Texto 1</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h1 id="contenido2" onclick="javaScript:envia(this.id);">Texto 2</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h1 id="contenido3" onclick="javaScript:envia(this.id);">Texto 3</h1>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

<h1>TEXTO QUE RECUPERE CON JSP</h1>

<%
    String valor = request.getParameter("txhContenidon");
    out.println(valor);
%>
