PImage frog;

void setup(){
  size(275,183); 
  frog = loadImage("frog.jpg");
}

void draw(){
  //image(frog,0,0);
  loadPixels();
  for(int x = 1; x < width-1; x++){
    for(int y = 1; y < height-1; y++){
      int loc1 = x     + y*width;
      int loc2 = (x+1) + y*width;
      int loc3 = x     + (y+1)*width;
      int loc4 = (x-1) + y*width;
      int loc5 = x     + (y-1)*width;
      int loc6 = (x+1) + (y-1)*width;
      int loc7 = (x+1) + (y+1)*width;
      int loc8 = (x-1) + (y+1)*width;
      int loc9 = (x-1) + (y-1)*width;
 
      float b1 = brightness(frog.pixels[loc1]);
      float b2 = brightness(frog.pixels[loc2]);
      float b3 = brightness(frog.pixels[loc3]);
      float b4 = brightness(frog.pixels[loc4]);
      float b5 = brightness(frog.pixels[loc5]);
      float b6 = brightness(frog.pixels[loc6]);
      float b7 = brightness(frog.pixels[loc7]);
      float b8 = brightness(frog.pixels[loc8]);
      float b9 = brightness(frog.pixels[loc9]);
      
      float x_diff = (abs(b1 - b2)*2+abs(b1 - b4)*2+abs(b1 - b6)+abs(b1 - b7)+abs(b1 - b8)+abs(b1 - b9))/8;
      float y_diff = (abs(b1 - b3)*2+abs(b1 - b5)*2+abs(b1 - b6)+abs(b1 - b7)+abs(b1 - b8)+abs(b1 - b9))/8;

      if(x_diff > 17){
        pixels[loc1] = color(0);
      } else if(y_diff > 17){
        pixels[loc1] = color(0);
      } else {
        pixels[loc1] = color(255);
      }
    }
  }
  updatePixels();
}