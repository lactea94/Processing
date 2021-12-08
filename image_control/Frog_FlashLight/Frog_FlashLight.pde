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
      float r = red(frog.pixels[loc]);
      float g = green(frog.pixels[loc]);
      float b = blue(frog.pixels[loc]);
      float d = dist(mouseX,mouseY, x, y);
      float factor = map(d,0,50,2,0);
      pixels[loc] = color(r*factor,g*factor,b*factor);
    }
  }
  updatePixels();
}