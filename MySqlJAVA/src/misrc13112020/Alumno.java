
package misrc13112020;

import java.sql.Date;

public class Alumno {
    private int id;
    private String nombre;
    private String apellidos;
    private String grupo;
    private Date fecha_nac;

    public Alumno() {
    }

    public Alumno(int id, String nombre, String apellidos, String grupo, Date fecha_nac) {
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.grupo = grupo;
        this.fecha_nac = fecha_nac;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getGrupo() {
        return grupo;
    }

    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }

    public Date getFecha_nac() {
        return fecha_nac;
    }

    public void setFecha_nac(Date fecha_nac) {
        this.fecha_nac = fecha_nac;
    }

    @Override
    public String toString() {
        return "Alumno{" + "id=" + id + ", nombre=" + nombre + ", apellidos=" + apellidos + ", grupo=" + grupo + ", fecha_nac=" + fecha_nac + '}';
    }
    
    
    
    
    
}
