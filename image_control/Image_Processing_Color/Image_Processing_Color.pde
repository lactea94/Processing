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
  
  for(int x = 0; x < video.width - 1; x++) {
    for(int y = 0 ; y < video.height - 1; y++) {
      int loc = x        + y       * video.width;
      int loc1 = (x + 1) + y       * video.width;
      int loc2 = x       + (y + 1) * video.width;

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

      float d_x = distSq(r,g,b,r1,g1,b1);
      float d_y = distSq(r,g,b,r2,g2,b2);
      
      if(d_x > threshold*threshold) {
        pixels[loc] = color(0);
      } else if(d_y > threshold*threshold) {
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