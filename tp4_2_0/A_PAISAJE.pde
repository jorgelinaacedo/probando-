
class Paisaje {
  // PROPIEDADES (VARIABLES) - declarar instancias de mi clase (objetos)
  Flores flor1, flor2, flor3, flor4, flor5, flor6;
  Colibri colibri1;
  //pasto
  int posX, posY, tam, tam2;
  float tam3,tam4;
  //flores
  PImage f1, f2, f3, f4, f5, f6, fondito;

  Paisaje () {
    //CONSTRUCTOR (SETUP DE LA CLASE) - asignación fija (SE EJECUA UNA SOLA VEZ)
    //clases
    flor1= new Flores();
    flor2=new Flores();
    flor3=new Flores();
    flor4=new Flores();
    flor5=new Flores();
    flor6=new Flores();
    colibri1= new Colibri();
    //dibujo
    rectMode(CENTER);
    noStroke();
    posX=200;
    posY=350;
    tam=400;
    tam2=100;
    tam3=random(0, 400);
    tam4=random(0, 400);

    //flores
    f1= loadImage("estrellas.png");
    f2= loadImage("estrelass.png");
    f3= loadImage("estrellass.png");
    f4=loadImage("jazmin.png");
    f5=loadImage ("cala.png");
    f6=loadImage("lirio.png");
    fondito=loadImage("fondito.png");
  }
  //MÉTODOS (FUNCIONES)
  void actualizar() {
  }

  void dibujar() {
    //dibujo paisaje
    pushStyle();
    //background (167, 237, 255);
   // fill(44, 255, 91);
   //rect(posX, posY, tam, tam2);
//fill(255, 255, 0);
   // circle(70, 65, 80);
   image(fondito, 0,0,400,400);
    popStyle();
    //dibujo objetos
    flor1.dibujar(tam3, tam4, f1);
    flor2.dibujar(tam3, tam4, f2);
    flor3.dibujar(tam3, tam4, f3);
    flor4.dibujar(tam3, tam4, f1);
    flor3.dibujar(tam3, tam4, f1);
    flor4.dibujar(tam3, tam4, f1);
    colibri1.dibujar();
  }
}
