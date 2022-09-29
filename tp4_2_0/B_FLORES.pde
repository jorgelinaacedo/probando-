

class Flores {

  // PROPIEDADES (VARIABLES) - no declarar instancias de mi clase porque ya lo declaré en la clase principal, en esta solo las variables locales que se van a utilizar
  float  tam;
  //PImage f1, f2;

  Flores () {
    //CONSTRUCTOR (SETUP DE LA CLASE) - asignación fija (SE EJECUA UNA SOLA VEZ)

    //f1= loadImage("flor2.png");
    // f2= loadImage("flores1.png");

    tam=30;
  }

  void actualizar() {
  }

  void dibujar(float x, float y, PImage flor ) {

    //image(flor, posX, posY, tam, tam);
    image(flor, x, y, tam, tam);
  }
}
