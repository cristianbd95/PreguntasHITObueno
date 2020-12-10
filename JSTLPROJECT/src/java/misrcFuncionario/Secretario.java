package misrcFuncionario;

public class Secretario extends Funcionario implements Autorizacion {

    @Override
    public double Salario() {
        return 2450;
    }

    public String getClave(String claveBD) {
        return claveBD;
    }

    @Override
    public boolean autorizado(String clave, String claveBD) {
        if (claveBD != clave) {
            return false;
        }
        return true;
    }

}
