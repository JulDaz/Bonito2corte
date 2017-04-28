<%-- 
    Document   : habitaciones
    Created on : 28/04/2017, 03:10:47 PM
    Author     : Labing
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Persona</title>
    </head>
    <body>
        <h1>AÑADIR PERSONA</h1>
        <form action="NuevaPersonaServlet">
            CEDULA: <input type="text" name="cedula">
            NOMBRE: <input type="text" name="nombre">
            APELLIDO: <input type="text" name="apellido">
            TELEFONO: <input type="text" name="telefono">
            NUMERO DE HABITACIÓN <input type="text" name="numHab">
            <input type="submit" name="enviar" value="ENVIAR">
        </form>
    </body>
</html>
