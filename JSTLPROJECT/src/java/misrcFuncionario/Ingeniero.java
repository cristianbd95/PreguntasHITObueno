
package misrcFuncionario;


public class Ingeniero extends Funcionario  implements Autorizacion {

    @Override
    public double Salario() {
        return 4222;
    }
    
    public String getClave(String claveBD){
        return claveBD;
    }

    @Override
    public boolean autorizado(String clave, String claveBD) {
        if(claveBD != clave){
            return false;
        }
        return true;
    }

}
