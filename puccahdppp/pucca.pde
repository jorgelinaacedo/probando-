class Pucca {
  PImage puccaa;
  float posX, posY, tamanio, vel;

  Pucca(float tam, float x, float y) {
    puccaa=loadImage("pucca.png");
    posX= x;
    posY= y;
    tamanio=tam;
    vel=map(posX, 0, 100, 2, 4);
    //para que varie segun la posicion la velociodad
    imageMode(CENTER);
  }

  void dibujar() {
    image(puccaa, posX, posY, tamanio, tamanio);
    posY+=vel;
  }
}
