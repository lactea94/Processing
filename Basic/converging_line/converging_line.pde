float x = 0;
float y = 0;
float weight;

void setup(){
  size(640,360);
}

void draw(){
  
  background(0);
  
  stroke(255);
  strokeWeight(0);
  
  x= 600;
  weight = random(0,1);
  while(x > 1){
    line(x,0,x,height);
    x = x*weight;
    delay(1);
  }
}