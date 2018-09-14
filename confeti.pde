class Confeti {
  float x = random(width);
  float y= random (-200, -50);
  float yvel= random(2,20);
  float tamano = random(5,10);
  
  void fall() {
    y=y+yvel;
    yvel= yvel+ 0.05;
    
    if(y> height){
      y=random (-200, -100);
      yvel=random (4,10);
    }
  }
  
  
  void show(){
    fill(random(255),random(255), random(255));
   ellipse (x,y,tamano, tamano);
    
  }
}
