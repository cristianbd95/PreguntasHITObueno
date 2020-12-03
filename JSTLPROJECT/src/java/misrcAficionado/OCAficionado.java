/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package misrcAficionado;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import misrcMenu.Empleado;

/**
 *
 * @author Campus FP
 */
public class OCAficionado {

    private Connection conexion;

    public OCAficionado(Connection conexion) {
        this.conexion = conexion;
    }

    public boolean registrarAficionado(Aficionado aficionado) {
        boolean bandera = false;
        String query = "INSERT INTO `aficionado` (`nombre`, `fecha-nacimiento`, `ciudad`, `estadocivil`) VALUES ('" + aficionado.getNombre() + "','2020-09-09', '" + aficionado.getCiudad() + "', '" + aficionado.getEstadocivil() + "')";
        String queryClub = null;
        PreparedStatement sql;
        try {
            sql = conexion.prepareStatement(query);
            sql.executeUpdate();
            for (int i = 0; i < aficionado.getAficionado_al().size(); i++) {
                queryClub = "INSERT INTO `clubaficionado` (`idAficionado`, `idClub`) VALUES('" + aficionado.getIdaficionado() + "', '" + aficionado.aficionado_al.get(i) + "')";
                sql = conexion.prepareStatement(queryClub);
                sql.executeUpdate();
            }
            bandera = true;
        } catch (SQLException ex) {
            bandera = false;
        }
        return bandera;
    }


    public List<Club> guardarNombreClub() {
        List<Club> club_al = new ArrayList<Club>();

        String query = "select id from clubs;";

        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conexion.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Club club = new Club();
                club.setId(rs.getString("id"));
                club_al.add(club);
            }
        } catch (SQLException ex) {
            club_al = null;
        }
        return club_al;

    }
    
    public List<String> mostrarTablaAficionado() {
        List<String> aficionado_al = new ArrayList<String>();
        String query = "select * from aficionado;";

        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = conexion.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {

                aficionado_al.add("<br>" + rs.getString(1)+ "\n <br>" + rs.getString(2)+ "\n <br>" + rs.getString(3)+ "\n<br>" + rs.getString(4)+ "\n<br>" + rs.getString(5));
            }
            ps.close();

        } catch (SQLException ex) {
            aficionado_al = null;
        }

        return aficionado_al;
    }

}
