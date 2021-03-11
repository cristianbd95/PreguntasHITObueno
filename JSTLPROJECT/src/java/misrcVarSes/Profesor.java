
package misrc;

public class Profesor {
    String login;
    String contraseña;

    public Profesor() {
    }

    public Profesor(String login, String contraseña) {
        this.login = login;
        this.contraseña = contraseña;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    @Override
    public String toString() {
        return "Profesores{" + "login=" + login + ", contrase\u00f1a=" + contraseña + '}';
    }
    
    
}
