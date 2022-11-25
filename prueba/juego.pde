class Juego {
  int escenario=0;
  Tablero tablero;
  Piezas piezaA, piezaB, piezaC, piezaD;
  PImage [] p = new PImage[4];
  PImage p1, p2, p3, p4;
  int tiempo = 0;
  int contador = 30;
  int segundos, tiempoComienzo;

  Juego() {
    textAlign(CENTER);
    tablero = new Tablero ();
    piezaA = new Piezas ();
    piezaB = new Piezas ();
    piezaC = new Piezas ();
    piezaD = new Piezas ();

    for (int i=0; i>p.length; i++) {
      p[i]=loadImage("pieza[i].jpg");
    }
  }

  void dibujar() {
    if (escenario == 0) {
      inicio();
    }
    if (escenario == 1) {
      instrucciones();
    }
    if (escenario == 2) {
      creditos();
    }
    if (escenario == 2) {
      juego();
    }
    if (escenario == 4) {
      perdiste();
    }
  }

  void inicio() {
    player.play();
    escenario=0;
    background(0);
    fill(255);
    text("J PARA JUGAR \n I PARA INSTRUCCIONES \n C PARA CRÉDITOS", height/2, width/2);
  }
  void instrucciones() {
    escenario=1;
    background(0);
    fill(255);
    text("Debés armar el rompecanezas en menos de 20 segundos \n R PARA VOLVER AL MENU \n J PARA JUGAR", height/2, width/2);
  }

  void creditos() {
    escenario=2;
    background (0);
    fill(255);
    text("Creado por Lara Aimone \n Materia: Tecnología multimedia 1 \n R PARA VOLVER AL INICIO", height/2, width/2);
  }
  void perdiste() {
    escenario=4;
    background(0);
    text("PERDISTE \n R PARA VOLVER AL INICIO", height/2, width/2);
  }
  void keyPressed() {
    if (escenario == 0) {
      if (key == 'i' || key == 'I') {
        escenario=1;
      }
      if (key == 'j' || key == 'J') {
        escenario=3;
      }
      if (key== 'c' || key == 'C') {
        escenario=2;
      }
    } 
    if (escenario == 1 || escenario == 2) {
      if (key == 'j' || key == 'J') {
        escenario=2;
      }
      if (key == 'r' || key == 'R') {
        escenario=0;
      }
    }
    if (escenario == 4) {
      if (key == 'r' || key == 'R') {
        escenario=0;
      }
    }
  }
  void juego() {
    player.pause();
    escenario=3; 
    background(255); 

    piezaA.dibujo(p[0]); 
    piezaA.update(); 
    piezaA.eventosMouse(); 
    piezaB.dibujo(p[1]); 
    piezaB.update(); 
    piezaB.eventosMouse(); 
    piezaC.dibujo(p[2]); 
    piezaC.update(); 
    piezaC.eventosMouse(); 
    piezaD.dibujo(p[3]); 
    piezaD.update(); 
    piezaD.eventosMouse(); 
    tablero.dibujo();
    segundos = tiempoComienzo - millis()/1000;
    if (segundos<0) {
      tiempoComienzo = millis()/1000 + contador;
    } else {
      text (segundos, 60, 60);
    } 
    if (segundos == 0) {
      escenario = 4;
    }
  }
}
