package misrcFuncionario;

public class Director extends Funcionario implements Autorizacion {

    public int clave;

    @Override
    public double Salario() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }




    @Override
    public boolean autorizado(String clave, String claveBD) {
        if(claveBD != clave){
            return false;
        }
        return true;
    }
}
