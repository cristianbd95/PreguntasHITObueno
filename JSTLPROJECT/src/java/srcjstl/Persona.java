
package srcjstl;


public class Persona {
    String nombre;
    String fecha_nac;
    String ciudad;

    public Persona() {
    }

    public Persona(String nombre, String fecha_nac, String ciudad) {
        this.nombre = nombre;
        this.fecha_nac = fecha_nac;
        this.ciudad = ciudad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFecha_nac() {
        return fecha_nac;
    }

    public void setFecha_nac(String fecha_nac) {
        this.fecha_nac = fecha_nac;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    @Override
    public String toString() {
        return "Persona{" + "nombre=" + nombre + ", fecha_nac=" + fecha_nac + ", ciudad=" + ciudad + '}';
    }
    
    
}
