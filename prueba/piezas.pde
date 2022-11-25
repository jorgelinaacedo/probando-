class Piezas {
  
  float posX, posY, tam;
  boolean arrastrar, piezaTocada;
  
  Piezas() {
    tam=100;
    posX=random(0, width-tam);
    posY=random(0, height-tam);
    
  }
  
  void update() {
    if(mousePressed) {
      arrastrar = true;
    } else {
      arrastrar = false;
      
    }
    
    float distancia = dist(posX, posY, mouseX, mouseY);
    if(distancia < tam)
      piezaTocada = true;
    else
      piezaTocada = false;
  }
  
  void eventosMouse() {
    if(arrastrar && piezaTocada) {
      posX = mouseX;
      posY = mouseY;
    }
  }
  
  void dibujo(PImage piezas) {
    image(piezas, posX,posY,tam,tam);
  }
 
}
