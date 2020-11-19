<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            fieldset {
                width: 300px;
            }
            h3 {
                text-decoration: underline;
                color: blue;
            }
            h4 {
                color: red;
            }
        </style>
    </head>
    <body>
        <h3>FORMULARIO: REGISTRO DE ALUMNO</h3>
        <form action="procesar.jsp" method="post">
            <fieldset>
                <legend>Ingresar datos:</legend>
                <p>
                    <label for="lblId">Id?</label>
                    <input type="number" name="txtN1" value="">
                </p>
                <p>	
                    <label for="lblNombre">Numero1?</label>
                    <input type="number" name="txtN2" value="">
                </p>
                
                <p>
                    <input type="submit" name="btoSumar" value="Grabar">
                </p>
            </fieldset>
        </form>
    </body>
</html>
