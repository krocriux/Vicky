ArrayList<Particula>  miColeccion;
ArrayList<Pelota> miColeccionp;

 



void setup() {
  size(640,480);
  miColeccion = new ArrayList<Particula>();
  miColeccionp = new ArrayList<Pelota>();
  for(int i=0;i<100;i++)
  {
  Pelota una = new Pelota(int(random(width)),int(random(0,180)),int(random(20,30)));
  miColeccionp.add(una);
  }
 for(int i=0;i<miColeccion.size();i++)
  {
  Pelota otra = miColeccionp.get(i);
  otra.run();
  if (otra.estado == false)
  {
    miColeccion.remove(i);
  }
  }
}

void draw() {
 background(255);
  
    

         

     
  
}