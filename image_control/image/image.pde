PImage img;

void setup(){
  size(1080,607);
  img = loadImage("river.jpg");
}

void draw(){
  background(0);
  image(img,0,0, width, height);
}