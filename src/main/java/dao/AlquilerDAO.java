/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.Conexion;
import vo.AlquilerVO;

/**
 *
 * @author Labing
 */
public class AlquilerDAO {

    private Connection connection;
    
    public AlquilerDAO() {
        this.connection = Conexion.getConnection();
    }
    
    
    public List<AlquilerVO> findAll() {
        List<AlquilerVO> alquileres = null;
        String query = "SELECT * FROM Alquiler";
        try {
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);
            int id = 0;
            String fecha = null;
            int cedulaResponsable = 0;

            while (rs.next()) {
                if (alquileres == null) {
                    alquileres = new ArrayList<AlquilerVO>();
                }

                id = rs.getInt("Id");
                fecha = rs.getString("Fecha");
                cedulaResponsable = rs.getInt("Cedula");

                AlquilerVO registro = new AlquilerVO(id,fecha,cedulaResponsable);
                alquileres.add(registro);
            }
            st.close();

        } catch (SQLException e) {
            System.out.println("Problemas al obtener la lista de AlquilerVOs");
            e.printStackTrace();
        }

        return alquileres;
    }
    
    public boolean insert(AlquilerVO t) {
        boolean result = false;
        String query = " insert into Alquiler (Id,Fecha,Cedula) values (?,?,?)";
        PreparedStatement preparedStmt = null;
        try {
            preparedStmt = connection.prepareStatement(query);
            preparedStmt.setInt(1, t.getId());
            preparedStmt.setString(2, t.getFecha());
            preparedStmt.setInt(3, t.getCedulaResponsable());
            result = preparedStmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public ArrayList informacion(){
        ArrayList informacion = null;
        
        String query = "SELECT * FROM (Personas JOIN Alquiler JOIN Habitaciones)";
        try {
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);
            

            while (rs.next()) {
                if (informacion == null) {
                    informacion = new ArrayList();
                }
                int cedula = rs.getInt("Cedula");
                informacion.add(cedula);
                String nombre = rs.getString("Nombre");
                informacion.add(nombre);
                String apellido = rs.getString("Apellido");
                informacion.add(apellido);
                int telefono = rs.getInt("Telefono");
                informacion.add(telefono);
                int numHab = rs.getInt("NumHab");
                informacion.add(numHab);
                int id = rs.getInt("Id");
                informacion.add(id);
                String fecha = rs.getString("Fecha");
                informacion.add(fecha);
                int capacidad = rs.getInt("Capacidad");
                informacion.add(capacidad);
                double precio = rs.getDouble("Precio");
                informacion.add(precio);
                int piso = rs.getInt("Piso");
                informacion.add(piso);
                
            }
            st.close();

        } catch (SQLException e) {
            System.out.println("Problemas al obtener la lista de AlquilerVOs");
            e.printStackTrace();
        }
        
        return informacion;
    }
}
