PImage gift;

void setup(){
  size(1280,960);
  gift = loadImage("gift.JPG");
  background(0);
}

void draw(){
  for(int i = 0; i < 100; i++){
    float x = random(width);
    float y = random(height);
    color c = gift.get(int(x),int(y));
    fill(c);
    noStroke();
    ellipse(x,y,8,8);
  }
}