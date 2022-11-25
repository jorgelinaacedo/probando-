class Tablero {
  
  PImage tablero; 
  int tam;
  
  Tablero() {
    
  tablero=loadImage("tablero.jpg");
  tam=200;
  
  }
  
  void dibujo() {
    image(tablero, 20, 20, tam, tam);
  }
}
