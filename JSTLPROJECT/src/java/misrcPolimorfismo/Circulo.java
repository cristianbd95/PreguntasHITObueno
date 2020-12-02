
package misrcPolimorfismo;

public class Circulo extends FiguraGeometrica2D{
    
    private double radio;

    public Circulo() {
    }

    public Circulo(double radio) {
        this.radio = radio;
    }

    public double getRadio() {
        return radio;
    }

    public void setRadio(double radio) {
        this.radio = radio;
    }

    @Override
    public String toString() {
        return "Circulo{" + "radio=" + radio + '}';
    }
    
    
    
    @Override
    public double area() {
        return Math.PI * Math.pow(this.radio,2); //Mat.pow es para hacer el radio al cuadrado 
    }

    @Override
    public double perimetro() {
        return 2 * Math.PI * this.radio;
    }

    @Override
    public String soy() {
        return "circulo";
    }
    
}
