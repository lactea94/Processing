PImage frog;

void setup(){
  size(275,183); 
  frog = loadImage("frog.jpg");
}

void draw(){
  //image(frog,0,0);
  loadPixels();
  for(int x = 0; x < width; x++){
    for(int y = 0; y < height; y++){
      int loc = x + y*width;
      float b = brightness(frog.pixels[loc]);
      if(b > mouseX){
        pixels[loc] = color(255);
      } else {
        pixels[loc] =  color(0);
      }
    }
  }
  updatePixels();
}