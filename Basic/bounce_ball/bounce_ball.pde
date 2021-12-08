float circleX;
float circleY;
float xspeed = 3;
float yspeed = 3;

void setup(){
  size(640,360);
  circleX = random(318,322);
  circleY = random(178,182);
  ellipse(320,180,16,16);
    background(50);
}

void draw(){


  fill(102);
  stroke(255);
  ellipse(circleX, circleY,16,16);
  
  circleX = circleX + xspeed;
  circleY = circleY + yspeed;
  
  if(circleX > width || circleX < 0){
    xspeed = xspeed * -1;  
  }
  if(circleY > height || circleY <0){
    yspeed = yspeed * -1;  
  }
  
  
}