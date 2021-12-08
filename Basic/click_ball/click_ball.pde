float circleX;
boolean going = false;

void setup(){
  size(640,360);
  circleX = width/2;
}

void draw(){
  background(50);
  ellipse(circleX,180,24,24);
  
  if(going){
    circleX = circleX + 1;
  }
  
}

void mousePressed(){

  going = !going;
  
}