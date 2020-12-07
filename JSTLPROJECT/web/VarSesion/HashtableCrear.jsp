<%@page import="java.util.Hashtable"%>
<%@page import="java.util.Map"%>
<html>
    <body>
        El Hashtable tiene las siguientes fechas almacenadas
        <br>

        <%
            Hashtable<Integer, String> profesores_ht = (Hashtable) application.getAttribute("profesores_hta");
            if (profesores_ht != null) {
                for (Map.Entry m : profesores_ht.entrySet()) {
                    out.println(m.getKey() + "  " + m.getValue() + "</br>");
                }
            } else {
                out.println("VACIO");
            }

        %>
    </body>
</html>
