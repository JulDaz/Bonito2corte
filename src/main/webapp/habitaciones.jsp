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
        <title>Nueva Habitacion</title>
    </head>
    <body>
        <h1>CREAR NUEVA HABITACIÓN</h1>
        <form action="NuevaHabitacionServlet">
            NUMERO: <input type="text" name="numero">
            PISO: <input type="text" name="piso">
            CAPACIDAD: <input type="text" name="capacidad">
            PRECIO: <input type="text" name="precio">
            <input type="submit" name="enviar" value="ENVIAR">
        </form>
    </body>
</html>
