class Fondo {
  PImage fondo = loadImage("fondo.jpeg");

  void actualizarFondo() {
    image(fondo, 0, 0);
  }
  // esta clase tendria que estar dentro de juego
}
