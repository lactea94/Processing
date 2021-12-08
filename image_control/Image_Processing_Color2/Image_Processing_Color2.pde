import processing.video.*;

Capture video;

float threshold = 7.5;

void setup(){
  size(640,480);
  String[] cameras = Capture.list();
  printArray(cameras);
  video = new Capture(this, cameras[1]);
  video.start();
}

void captureEvent(Capture video){
  video.read(); 
}

void keyPressed() { 
  if(key == 'i'){
    threshold += 0.5;
  } else if (key == 'd') {
    threshold -= 0.5;
  }
  println(threshold);
}

void draw() {
  video.loadPixels();
  loadPixels();
  image(video,0,0);
  
  for(int x = 1; x < video.width - 1; x++) {
    for(int y = 1 ; y < video.height - 1; y++) {
      int loc  = x       + y       * video.width;
      int loc1 = (x + 1) + y       * video.width;
      int loc2 = x       + (y + 1) * video.width;
      int loc3 = (x - 1) + y       * video.width;
      int loc4 = x       + (y - 1) * video.width;

      color Col = video.pixels[loc];
      float r = red(Col);
      float g = green(Col);
      float b = blue(Col);
      color Col1 = video.pixels[loc1];
      float r1 = red(Col1);
      float g1 = green(Col1);
      float b1 = blue(Col1);
      color Col2 = video.pixels[loc2];
      float r2 = red(Col2);
      float g2 = green(Col2);
      float b2 = blue(Col2);
      color Col3 = video.pixels[loc3];
      float r3 = red(Col3);
      float g3 = green(Col3);
      float b3 = blue(Col3);
      color Col4 = video.pixels[loc4];
      float r4 = red(Col4);
      float g4 = green(Col4);
      float b4 = blue(Col4);

      float d_x1 = distSq(r,g,b,r1,g1,b1);
      float d_x2 = distSq(r,g,b,r3,g3,b3);   
      float d_y1 = distSq(r,g,b,r2,g2,b2);
      float d_y2 = distSq(r,g,b,r4,g4,b4);
      
      float x_diff = (d_x1 + d_x2)/2;
      float y_diff = (d_y1 + d_y2)/2;
      
      if(x_diff > threshold*threshold) {
        pixels[loc] = color(0);
      } else if(y_diff > threshold*threshold) {
        pixels[loc] = color(0);
      } else { 
        pixels[loc] = color(255);
      }
    }
  }
  updatePixels();
}

float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
  float d = (x1 -x2)*(x1 - x2) + (y1 -y2)*(y1 - y2) + (z1 - z2)*(z1 - z2);
  return d; 
}