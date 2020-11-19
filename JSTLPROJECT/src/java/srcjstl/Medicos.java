
package srcjstl;

public class Medicos {
   String nombre;
   String cesareas;
   String inducciones;
   String legrados;

    public Medicos() {
    }

    public Medicos(String nombre, String cesareas, String inducciones, String legrados) {
        this.nombre = nombre;
        this.cesareas = cesareas;
        this.inducciones = inducciones;
        this.legrados = legrados;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCesareas() {
        return cesareas;
    }

    public void setCesareas(String cesareas) {
        this.cesareas = cesareas;
    }

    public String getInducciones() {
        return inducciones;
    }

    public void setInducciones(String inducciones) {
        this.inducciones = inducciones;
    }

    public String getLegrados() {
        return legrados;
    }

    public void setLegrados(String legrados) {
        this.legrados = legrados;
    }

    @Override
    public String toString() {
        return "Medicos2{" + "nombre=" + nombre + ", cesareas=" + cesareas + ", inducciones=" + inducciones + ", legrados=" + legrados + '}';
    }
   
   
}
