class Garu {
  PImage garuu;
  int x, y;

  Garu() {
    garuu=loadImage("garu.png");
    x=width/2;
    y=450;
    imageMode(CENTER);
  }

  void dibujar() {
    image(garuu, x, y, 50, 50);
    /*if (x>550){
     x=550;
     }
     if (x<-50){
     x=-50;
     }*/
  }

  void izquierda() {
    x= x-5;
  }

  void derecha() {
    x= x+5;
  }
}
