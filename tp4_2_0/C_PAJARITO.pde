


class Colibri {

  // PROPIEDADES (VARIABLES) - no declarar instancias de mi clase porque ya lo declaré en la clase principal, en esta solo las variables locales que se van a utilizar
  float posX, posY, tam;
  PImage pajarito;

  Colibri() {
    //CONSTRUCTOR (SETUP DE LA CLASE) - asignación fija (SE EJECUA UNA SOLA VEZ)
    posX=20;
    posY=20;
    tam=20;
    pajarito = loadImage("jack.png");
  }

  void actualizar() {
  }

  void dibujar() {
    pushStyle();
   
    image(pajarito,mouseX,mouseY,150,150);
    popStyle();
  }
}
