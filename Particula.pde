class Particula {

  color col=255;
  float radio=20;
  float x=0, y=0;
  float vel_x=random(-5, 5), vel_y=random(0, 5);
  float vida=100;
  boolean estado= true;

  Particula(float _x, float _y, float _radio) {
    x= _x;
    y= _y;
    radio= _radio;
  }

  void run() {
    mover();
    rebotar();
    desplegar();
    //lifespan();
    
  }

  void rebotar() {
    if (x>width || x<0) 
      vel_x*=-1; 
    if (y>height || y<0)
      vel_y*=-1;
  } 
  void mover() {
    x= x-vel_x;
    y= y-vel_y;
  }


  void desplegar() {
    noStroke();
    fill(col);
    ellipse(x, y, radio, radio);
  } 
 
  void lifespan(){
  
    vida-=5;
   
    if (vida<0)
    estado = false;
  
  
  }
 
}