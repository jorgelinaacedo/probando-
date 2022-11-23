class Juego {
  // PROPIEDADES (VARIABLES) - declarar instancias de mi clase (objetos) - seria como el antes del setup
  int estado= 0;
  int contador=0;
  Pucca [] puccaColeccion =new Pucca[8];
  Garu garu;
  //import ddf.minim.*;
  //Minin mininm;
  //AudioPlayer audio;
  int tiempo = 0;
  int contadorTiempo = 20;
  int segundos, tiempoComienzo;


  Juego() {
    //CONSTRUCTOR (SETUP DE LA CLASE) - asignación fija (SE EJECUA UNA SOLA VEZ)
    garu= new Garu();
    textAlign(CENTER);
    for (int i=0; i<puccaColeccion.length; i++) { 
      puccaColeccion[i] = new Pucca(20*i, random(width), random(-300, 0));
    }
    //audio = minim.loadFile("IntroPucca.wav");
    tiempoComienzo= millis()/1000 + contadorTiempo;
  }

  void dibujar() {
    println(contador);
    if (estado == 0) {
      inicio();
    }
    if (estado == 1) {
      instrucciones();
    }
    if (estado == 2) {
      jugar();
    }
    if (estado == 3) {
      ganar();
    }
    if (estado == 4) {
      perder();
    }
  }

  void inicio() {
    estado = 0;
    //reiniciar();
    background(0);
    fill(255);
    text("J = Jugar", height/2, 220);
    text("I = Instrucciones", height/2, width/2);
  }

  void instrucciones() {
    estado = 1;
    background(0);
    fill(255);
    text("Para ganar debés esquivar a Pucca", height/2, 220);
    text("Solo tenes 5 vidas", height/2, 235);
    text("Te podés mover con la A y la D", height/2, width/2);
    text("J = Jugar", height/2, 270);
  }

  void ganar() {
    estado = 3;
    text("GANASTE \n Apretar V para volver \n\n\n\n\n Creadoras: Jorgelina Acedo y Lourdes Grossi \n Profesor: Matias Jauregui Lorda \n Materia: Teconologia Multimedial 1", height/2, width/2);
    reiniciar();
  }
  void perder() {
    estado = 4;
    fill(255);
    text("PERDISTE \n Apretar V para volver \n\n\n\n\n Creadoras: Jorgelina Acedo y Lourdes Grossi \n Profesor: Matias Jauregui Lorda \n Materia: Teconologia Multimedial 1", height/2, width/2);
    //text("Apretar V para volver", height/2, 270);
    reiniciar();
  }
  void keyPressed() {
    if (estado == 0) {
      if (key == 'i' || key == 'I') {
        instrucciones();
      }
      if (key == 'j' || key == 'J')
        jugar();
    } 
    if (estado == 1) {
      if (key == 'j' || key == 'J') 
        jugar();
    }
    if (estado == 2) {
      if (key == 'a' || keyCode == LEFT) {
        garu.izquierda();
      }
      if (key == 'd' || keyCode == RIGHT) {
        garu.derecha();
      }
    }
    if (estado == 3 || estado == 4) {
      if (key == 'v' || keyCode == 'V') {
        jugar();
      }
    }
  }

  void jugar() {
    estado = 2;
    background(#641E1E);
    for (int e=0; e<puccaColeccion.length; e++) { 
      puccaColeccion[e].dibujar();
      float distancia = dist (puccaColeccion[e].posX, puccaColeccion[e].posY, garu.x, garu.y); 
      if (distancia <= 40) { 
        contador++;//esto se acutaliza contantemente y no tiene que ser asi (creo)
      }
      pushStyle();
      fill(255, 0, 0);
      circle(puccaColeccion[e].posX, puccaColeccion[e].posY, 20);
      circle(garu.x, garu.y, 20);
      popStyle();
    }
    for (int i=0; i<puccaColeccion.length; i++) { 
      if (puccaColeccion[i].posY>height) {
        puccaColeccion[i].posY= random(-100);
      }
    }
    garu.dibujar();
    if (contador==5) { 
      perder();
    }
    contador();
  }
  void contador() {
    //esto quiero que dure un minuto
    segundos= tiempoComienzo - millis()/1000;
    if (segundos < 0) {
      tiempoComienzo = millis()/1000 + contadorTiempo;
    } else {
      text(segundos, 80, 80);
    }
    if (segundos == 0) {
      estado= 3;
    }
  }

  void reiniciar() {
    for (int i=0; i<puccaColeccion.length; i++) { 
      puccaColeccion[i] = new Pucca(12*i, random(width), random(-300, 0));
    }
    contador = 0;
  }
}
