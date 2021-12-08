float circleX;
float circleY;

void setup() {
  size(640,360);
  circleX = width/2;
  circleY = height/2;
}

void draw(){
  background(50);
  fill(255);
  ellipse(320,180,24,24);
  ellipse(circleX,circleY,24,24);

  
  circleX = circleX + random(-1,1);
  circleY = circleY + random(-1,1);
  
}