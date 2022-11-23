Juego juego;

void setup() {
  size(500, 500);
  juego= new Juego();
}

void draw() {
  juego.dibujar();
}

void keyPressed() {
  juego.keyPressed();
}

/*
SI TENGO ALGO DE ESTO DESAPRUEBO
 ¿Tiene variables globales? no se q es eso
 ¿No usa parámetros en ningún método? está
 ¿No se comunican los objetos? está
 ¿No hay arreglo de objetos? está
 ¿No hya colisión ni otra relación? está
 ¿No tiene sonido de eventos? creo
 ¿No utiliza lógica de estados? está
 */
