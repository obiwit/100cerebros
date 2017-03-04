
public class Complexo {
  private double re; // parte real
  private double im; // parte imaginaria

  // Construtor
  // Usar na forma "Complex n1 = new Complex(2,3);"
  public Complexo(double real, double imag) {
    re = real;
    im = imag;
  }

  public double real() {   // devolve parte real
    return re;
  } 

  public double imag() {   // devolve parte imaginaria
    return im;
  } 

  public double abs() {    // modulo
    return Math.sqrt(re * re + im * im);
  } 

  public double phase() {  // fase entre -pi and pi
    return Math.atan2(im, re);
  } 

}

