/*créditos a The Coding Train 
https://www.youtube.com/watch?v=KkyIDI6rQJI*/

class Drop {
  float x = random(width);
  float y= random (-200, -50);
  float yvel= random(2,20);
  float len= random (10,20);
  
  void fall() {
    y=y+yvel;
    yvel= yvel+ 0.05;
    
    if(y> height){
      y=random (-200, -100);
      yvel=random (4,10);
    }
  }
  
  
  void show(){
    strokeWeight(2);
    stroke(41,90,157);
    line (x,y,x, y+len);
    
  }
}
