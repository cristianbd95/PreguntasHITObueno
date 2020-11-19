package misrcMenu;

//CONTIENE LOS METODOS PARA REVISAR OPERACIONES DE LA BBDD
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OperacionesCrud {
    
    private Connection conexion;

    public OperacionesCrud(Connection conexion) {
        this.conexion = conexion;
    }

    public boolean crearTabla() {
        boolean bandera = true;
        try {
            String query = "create table Empleado  (id INT, nombre VARCHAR(30), salario float)"; // tambien se puede hacer asi la query
            Statement sql = conexion.createStatement();
            sql.executeUpdate("create table Empleado  ("
                    + "id           INT , "
                    + "nombre VARCHAR(30), "
                    + "salario          float " //el ultimo campo nunca lleva coma
                    + ")"
            );
            sql.close();
        } catch (SQLException e) {
            bandera = false;
        }
        return bandera;
    }

    public boolean insertarEmpleado(Empleado empleado) {
        boolean bandera = true;
        String query = "INSERT INTO empleado (id, nombre, salario) VALUES (" + empleado.getId() + ",'" + empleado.getNombre() + "', " + empleado.getSalario()+")";
        int x = -1;
        try {
            Statement sql = conexion.createStatement();
            x = sql.executeUpdate(query);
        } catch (SQLException ex) {
            bandera = false;
        }
        return bandera;
    }
    
    
    public List<Empleado> mostrarEmpleado() {
        List<Empleado> empleado_al = new ArrayList<Empleado>();
        String query = "SELECT * FROM empleado;";

        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = conexion.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Empleado empleado = new Empleado();
                empleado.setId(rs.getInt("id"));
                empleado.setNombre(rs.getString("nombre"));
                empleado.setSalario(rs.getFloat("salario"));
                empleado_al.add(empleado);
            }
            ps.close();

        } catch (SQLException ex) {
            empleado_al = null;
        }

        return empleado_al;
    }
    
   /* public int actualizarAlumno(int id, Empleado empleado) {
    
    }
    */
    
}
