//TP 4 - ACEDO JORGELINA - TECNOLOGÍA MULTIMEDIAL 1
//Link video explicativo:
//no puse video con mi cara mientras lo hbalo porque me robaron el celu y no tenia forma de hacerlo :(

Paisaje paisaje;

void setup () {
  size (400, 400);
  paisaje = new Paisaje();
}

void draw () {

  println("x:", mouseX);
  println("y:", mouseY);

  paisaje.actualizar();
  paisaje.dibujar();
}
