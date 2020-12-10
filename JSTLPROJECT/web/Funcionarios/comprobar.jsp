
<%@page import="misrcFuncionario.Autorizacion"%>
<%@page import="misrcFuncionario.Gerente"%>
<%@page import="misrcFuncionario.Funcionario"%>
<%@page import="misrcFuncionario.Controlador"%>
<%@page import="misrcFuncionario.OperacionesCrud"%>
<%@page import="java.sql.Connection"%>
<%@page import="misrcFuncionario.Conexion"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Conexion c = new Conexion(true);
    Connection conexion = c.getConexion();
    OperacionesCrud oc = new OperacionesCrud();
    
    String sUsuario = request.getParameter("txtUsuario");
    String sPassword = request.getParameter("pwdPassword");

    List<String> funcionarios_al = oc.obtenerFuncionario(Integer.parseInt(sUsuario), conexion);
    
    String id = funcionarios_al.get(0);
    String nombre = funcionarios_al.get(1);
    String password = funcionarios_al.get(2);
    
    Controlador cont = new Controlador();
    Autorizacion a = new Gerente();
    Funcionario f = new Gerente();
    
    if(cont.login(a, password, sPassword)){
        out.println("LOGIN OK");
    }else{
        out.println("ERROR LOGIN");
    }
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    </body>
</html>
