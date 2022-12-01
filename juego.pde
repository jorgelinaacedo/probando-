class Juego {
  int escenario = 0;
  int tiempo = 0;
  int contador = 30;
  int segundos, tiempoComienzo;

  Tablero tablero;
  Pieza pieza;
  Fondo fondo = new Fondo();
  
  boolean piezaTocada, arrastrar;


  Juego() {
    textAlign(CENTER);
    tablero = new Tablero ();
    pieza = new Pieza ();
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
    if (escenario == 3) {
      juego();
    }
    if (escenario == 4) {
      perdiste();
    }
  }

  void inicio() {
    escenario = 0;
    textAlign(CENTER);
    fill(0);
    fondo.actualizarFondo();
    text("J PARA JUGAR \n I PARA INSTRUCCIONES \n C PARA CRÉDITOS", height/2, width/2);
  }

  void instrucciones() {
    escenario = 1;
    background(0);
    textAlign(CENTER);
    fondo.actualizarFondo();
    fill(0);
    text("Debés armar el rompecanezas en menos de 20 segundos \n R PARA VOLVER AL MENU \n J PARA JUGAR", height/2, width/2);
  }

  void creditos() {
    escenario = 2;
    background (0);
    textAlign(CENTER);
    fondo.actualizarFondo();
    fill(0);
    text("Creado por Lara Aimone \n Materia: Tecnología multimedia 1 \n R PARA VOLVER AL INICIO", height/2, width/2);
  }

  void perdiste() {
    escenario = 4;
    fondo.actualizarFondo();
    textAlign(CENTER);
    fill(0);
    text("PERDISTE \n R PARA VOLVER AL INICIO", height/2, width/2);
  }

  void keyPressed() {
    if (escenario == 0) {
      if (key == 'i' || key == 'I') {
        instrucciones();
      } else if (key == 'j' || key == 'J') {
        juego();
      } else if (key== 'c' || key == 'C') {
        creditos();
      }
    } 
    if (escenario == 1 || escenario == 2) {
      if (key == 'j' || key == 'J') {
        juego();
      }
      if (key == 'r' || key == 'R') {
        inicio();
      }
    }
    if (escenario == 4) {
      if (key == 'r' || key == 'R') {
        inicio();
      }
    }
  }

  void juego() {
    escenario = 3; 
    background(255); 
    pieza.dibujo(); 
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
    colision();
  }

  void colision() {
    //metodo utilizado para calcalar cada colision 

    //condicional para saber cuando se esta intentando mover una pieza (podria ser tmb mouseDragged)
    if (mousePressed) {
      arrastrar = true;
    } else {
      arrastrar = false;
    }
    //ciclo for anidado para calular distancia de las posicones DE CADA PIEZA
    for (int i=0; i>pieza.posX.length; i++) {
      for (int d=0; d>pieza.posY.length; d++) { 
        float distancia = dist(pieza.posX[i], pieza.posY[d], mouseX, mouseY);
        if (distancia < pieza.tam) {
          piezaTocada = true;
        } else {
          piezaTocada = false;
        }

        // condicional que estipula que cuando la distancia y el arrastrar sean ejecutados, las posiciones de la pieza tocada sean las del mouse
        if (arrastrar && piezaTocada) {
          pieza.posX[i] = mouseX;
          pieza.posY[d] = mouseY;
        }
        //falta un condicional que a calcule la distancia de donde irian las piezas en el tablero y poner si es menor a 50, las psociones en x e y de las piezas sean las correspondientes al tablero
      }
    }
  }
}
