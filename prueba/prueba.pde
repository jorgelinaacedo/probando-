//LINK VIDEO
//https://youtu.be/YwUnd42mYTA

import ddf.minim.*;

Minim minim;
AudioPlayer player, player2;
Juego juego;

void setup() {
  size(400, 400);
  background(255);
  minim = new Minim(this);
  player = minim.loadFile("a.mp3");
  juego = new Juego();
}

void draw() {
  juego.dibujar();
}

void keyPressed() {
  juego.keyPressed();
}