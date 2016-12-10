class Pelota {
  int num = int(random(0,4));
  color[] colores = {color(0,174,219),color(162,0,255),color(244,120,53),color(212,18,67),color(142,193,39)};
  color col=colores[num];
  float radio=20;
  float x=0, y=0;
  boolean estado = true;

  Pelota(float _x, float _y, float _radio) {
    x= _x;
    y= _y;
    radio= _radio;
  }

  void run() {
    desplegar();
    //lifespan();
    
  }

  void desplegar() {
    noStroke();
    fill(col);
    ellipse(x, y, radio, radio);
  } 
 
 
}