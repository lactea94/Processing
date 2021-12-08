float circleX;
float circleY;
Ball b;

void setup(){
  size(640,360);
  circleX = width/2;
  circleY = 50;
  b = new Ball();
}

void draw(){

    background(50);

    
    b.fallingball(100, 20, random(-2,2),1);
    //fallingball(20, 100, random(0,2),random(-2,2));
    //fallingball(30, 50, random(-2,0),random(-2,2));
}