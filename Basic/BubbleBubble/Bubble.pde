class Bubble {
  float x;
  float y;
  float diameter;
  
  Bubble(float tempD){
    x = random(0,640);
    y = random(0,360);
    diameter = tempD;
  }
  
  void ascend(){
    y--; 
  }
  
  void display(){
    stroke(0);
    fill(127);
    ellipse(x,y,diameter,diameter);
  }
  
  void top(){
    if(y < diameter/2){
      y = diameter/2;
      x = x + random(-0.3,0.3);
    } 
  }
  
}