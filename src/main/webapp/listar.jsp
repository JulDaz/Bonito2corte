<%-- 
    Document   : listar
    Created on : 28/04/2017, 03:11:00 PM
    Author     : Labing
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar</title>
    </head>
    <body>
        <h1>LISTAR</h1>
        <%ArrayList registros = (ArrayList) request.getAttribute("lista");%>
        <form action="ListarServlet">
            <input type="submit" value="LISTAR TODO">
        </form>
        <table>
            <tr>
                <th>Cédula</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Teléfono</th>
                <th>Habitación</th>
                <th>Id Encargado</th>
                <th>Fecha</th>
                <th>Capacidad</th>
                <th>Precio</th>
                <th>Piso</th>
            </tr>
            <%if (registros != null) {
                for (int i = 0; i < registros.size(); i+=10) {%>
            <tr>
                <td><%=registros.get(i)%></td>
                <td><%=registros.get(i+1)%></td>
                <td><%=registros.get(i+2)%></td>
                <td><%=registros.get(i+3)%></td>
                <td><%=registros.get(i+4)%></td>
                <td><%=registros.get(i+5)%></td>
                <td><%=registros.get(i+6)%></td>
                <td><%=registros.get(i+7)%></td>
                <td><%=registros.get(i+8)%></td>
                <td><%=registros.get(i+9)%></td>
            </tr>
            <%  }
            }%>
        </table>
    </body>
</html>
