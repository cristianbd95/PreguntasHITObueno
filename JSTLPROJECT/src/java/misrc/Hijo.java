package misrc;

import java.util.Date;

public class Hijo {

    private String nombre;
    private String apellido;
    private Integer edad;
    private Date fechaRegistro;

    public Hijo(String nombre, String apellido, Integer edad, Date fechaRegistro) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.fechaRegistro = fechaRegistro;
    }

    public Integer getEdad() {
        return edad;
    }

    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    public Hijo(String nombre, String apellido) {
        this.nombre = nombre;
        this.apellido = apellido;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

}
