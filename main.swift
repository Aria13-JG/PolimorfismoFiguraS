import Foundation
func abstract class Poligono{
  func abstract area() -> Double
  func abstract perimetro() -> Double
}
override func toString() -> String{
  return "Poligono"
}

class Triangulo : Poligono{
  var base : float
  var altura : float
  var ladoA : float
  var ladoB : float
  var ladoC : float

  func Triangulo() {}
  
  func Triangulo(base : float, altura : float, ladoA : float, ladoB : float, ladoC : float){
    self.base = base
    self.altura = altura 
    self.ladoA = ladoA
    self.ladoB = ladoB
    self.ladoC = ladoC
  }
  func tienenLadosParalelos() -> Boolean{
    return false
  }
  //override
  override func area() -> Double{
    return(base * altura)/2
  }
  //override
  override func perimetro(){
    return ladoA + ladoB + ladoC
  }
  //override
  override func toString() -> String{
    return "Triangulo"
  }
}

class Cuadrilatero : Poligono{
  var base : float
  var altura : float
  var ladoA : float
  var ladoB : float

  func Cuadrilatero() {}
  
  func Cuadrilatero(base : float, altura : float, ladoA : float, ladoB : float){
    self.base = base
    self.altura = altura 
    self.ladoA = ladoA
    self.ladoB = ladoB
  }
  func tienenLadosParalelos() -> Boolean{
    return true
  }
  //override
  override func area() -> Double{
    return(base * altura)
  }
  //override
  override func perimetro(){
    return ladoA + ladoB
  }
  //override
  override func toString() -> String{
    return "Cuadrilatero"
  }
}

class PruebaFigurasGeometricas{
  //static?
  func main(String [] args) -> Void{
    Poligono poligono
    poligono = new Triangulo()
    //System.out.println(poligono.area())
    print(poligono.area())
    poligono = new Cuadrilatero(2, 4, 2, 4)
    //System.out.println(poligono.area())
    print(poligono.area())
  }
}
