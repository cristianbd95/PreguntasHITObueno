
package misrcFuncionario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class OperacionesCrud {
    
    public List<String> obtenerFuncionario(int id ,Connection conexion) {
        List<String> funcionarios_al = new ArrayList<String>();
        String query = "select * from funcionarios WHERE id = " + id + ";" ;

        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = conexion.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                funcionarios_al.add(rs.getString(1));
                funcionarios_al.add(rs.getString(2));
                funcionarios_al.add(rs.getString(3));
            }
            ps.close();

        } catch (SQLException ex) {
            funcionarios_al = null;
        }

        return funcionarios_al;

    }
    
    
}
