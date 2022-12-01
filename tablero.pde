class Tablero {

  PImage tablero; 
  int tam;

  Tablero() {
    imageMode(CENTER);

    tablero=loadImage("tablero.jpg");
    tam=200;
  }

  void dibujo() {
    image(tablero, 200, 20, tam, tam);
  }
}
