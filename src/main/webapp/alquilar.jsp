<%-- 
    Document   : alquilar
    Created on : 28/04/2017, 03:09:28 PM
    Author     : Labing
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alquilar Habitacion</title>
    </head>
    <body>
        <h1>ALQUILAR</h1>
        <form action="NuevoAlquilerServlet">
            ID: <input type="text" name="id">
            FECHA: <input type="date" name="fecha">
            CEDULA RESPONSABLE: <input type="text" name="responsable">
            <input type="submit" name="enviar" value="ENVIAR">
        </form>
    </body>
</html>
