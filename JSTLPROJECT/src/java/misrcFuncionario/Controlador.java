
package misrcFuncionario;

public class Controlador {
    
    public boolean login(Autorizacion a, String claveBD, String claveINPUT){
        boolean bandera = false;
        System.out.println("Ingrese su clave = ");
        boolean ok = a.autorizado(claveINPUT, claveBD);
        if(ok == true){
            System.out.println("Autorizado el acceso al sistema");
            Funcionario f = (Funcionario) a;
            bandera = true;
        }else{
            System.out.println("Denegado el acceso al sistema");
            bandera = false;
        }
        return bandera;
    }
    
    public void informacion(Funcionario a){
        System.out.println("Sueldo = " + a.Salario());
    }
    
    
}
