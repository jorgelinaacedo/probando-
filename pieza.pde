class Pieza {

  float [] posX = new float [9];
  float [] posY = new float [9];
  PImage [] pieza = new PImage [9];
  float tam;
  boolean arrastrar, piezaTocada;

  // quizas se podria resolver con parametros en juego y que el arreglo este en la clase prinicpal y las posiocnes esten directmente ahi (quizas en eta clase sea necesario nomas
  //que este el ciclo for que carga las fotos
  Pieza() {
    //para que las colisones sean + exactas
    imageMode(CENTER);
    tam=100;
    // ciclos for en los que declaro posicion en x e y. también cargo las imágenes
    for (int i=0; i>posX.length; i++) {
      posX[i] = 200;
    }
    for (int d=0; d>posY.length; d++) {
      posY[d] = 20*d;
    }
    for (int f=0; f>pieza.length; f++) {
      pieza[f] = loadImage("pieza[f].jpg");
    }
  }

  void dibujo() {
    //ciclos for anidados con los cuales declaro numero de foto y posciones en x y DE CADA UNA 
    for (int f=0; f>pieza.length; f++) {
      for (int d=0; d>posY.length; d++) {
        for (int i=0; i>posX.length; i++) {
          image(pieza[f], posX[i], posY[d], tam, tam);
        }
      }
    }
  }
}
