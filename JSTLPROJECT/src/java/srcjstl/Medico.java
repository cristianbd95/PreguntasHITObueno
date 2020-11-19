
package srcjstl;


public class Medico {
    String id;
    String fecha;
    String nombre;
    String sexo;
    String especializacion;

    public Medico() {
    }

    public Medico(String id, String fecha, String nombre, String sexo, String especializacion) {
        this.id = id;
        this.fecha = fecha;
        this.nombre = nombre;
        this.sexo = sexo;
        this.especializacion = especializacion;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEspecializacion() {
        return especializacion;
    }

    public void setEspecializacion(String especializacion) {
        this.especializacion = especializacion;
    }

    @Override
    public String toString() {
        return "medico{" + "id=" + id + ", fecha=" + fecha + ", nombre=" + nombre + ", sexo=" + sexo + ", especializacion=" + especializacion + '}';
    }
    
    
    
    
    
    
    
}
