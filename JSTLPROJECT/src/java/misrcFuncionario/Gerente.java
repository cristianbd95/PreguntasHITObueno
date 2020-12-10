
package misrcFuncionario;



public class Gerente extends Funcionario implements Autorizacion{
    
    public int clave;

    @Override
    public double Salario() {
        return 5000;
    }
    


    @Override
    public boolean autorizado(String clave, String claveBD) {
        if(claveBD != clave){
            return false;
        }
        return true;
    }

  
    
}
