
package misrc;

public class Alumno {
    String nombre;
    String fecha;
    int nota;

    public Alumno() {
    }

    public Alumno(String nombre, String fecha, int nota) {
        this.nombre = nombre;
        this.fecha = fecha;
        this.nota = nota;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }

    @Override
    public String toString() {
        return "Alumnos{" + "nombre=" + nombre + ", fecha=" + fecha + ", nota=" + nota + '}';
    }
    
    
}
