PImage frog;

void setup(){
  size(275,183); 
  frog = loadImage("frog.jpg");
}

void draw(){
  //image(frog,0,0);
  loadPixels();
  for(int x = 0; x < width-1; x++){
    for(int y = 0; y < height; y++){
      int loc1 = x     + y*width;
      int loc2 = (x+1) + y*width;
 
      float b1 = brightness(frog.pixels[loc1]);
      float b2 = brightness(frog.pixels[loc2]);
      
      float diff = abs(b1 - b2);
      if(diff > 30){
        pixels[loc1] = color(0);
      } else {
        pixels[loc2] = color(255);
      }
    }
  }
  updatePixels();
}