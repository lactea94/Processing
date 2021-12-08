PImage frog;

void setup(){
  size(275,183);
  frog = loadImage("frog.jpg");
  background(0);
}

void draw(){
  for(int i = 0; i < 100; i++){
    float x = random(width);
    float y = random(height);
    color c = frog.get(int(x),int(y));
    fill(c,25);
    noStroke();
    ellipse(x,y,4,4);
  }
}