import processing.video.*;

Capture video;

float threshold = 7.5;

void setup(){
  size(640,480);
  String[] cameras = Capture.list();
  printArray(cameras);
  video = new Capture(this, cameras[19]);
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
  
  for(int x = 2; x < video.width - 2; x++) {
    for(int y = 2; y < video.height - 2; y++) {
      int loc = x        + y       * video.width;
      int loc1 = (x - 2) + y       * video.width;
      int loc2 = (x - 1) + y       * video.width;
      int loc3 = (x + 1) + y       * video.width;
      int loc4 = (x + 2) + y       * video.width;
      int loc5 = x       + (y - 2) * video.width;
      int loc6 = x       + (y - 1) * video.width;
      int loc7 = x       + (y + 1) * video.width;
      int loc8 = x       + (y + 2) * video.width;

      float b = brightness(video.pixels[loc]);
      float b1 = brightness(video.pixels[loc1]);
      float b2 = brightness(video.pixels[loc2]);
      float b3 = brightness(video.pixels[loc3]);
      float b4 = brightness(video.pixels[loc4]);
      float b5 = brightness(video.pixels[loc5]);
      float b6 = brightness(video.pixels[loc6]);
      float b7 = brightness(video.pixels[loc7]);
      float b8 = brightness(video.pixels[loc8]);
      
      float x_diff = (abs(b - b1) + abs(b - b2) + abs(b - b3) + abs(b - b4))/4;
      float y_diff = (abs(b - b5) + abs(b - b6) + abs(b - b7) + abs(b - b8))/4;

      if(x_diff > threshold) {
        pixels[loc] = color(0);
      } else if(y_diff > threshold) {
        pixels[loc] = color(0);
      } else { 
        pixels[loc] = color(255);
      }
    }
  }
  updatePixels();
}

float distSq(float x1, float y1, float x2, float y2) {
  float d = (x1 -x2)*(x1 - x2) + (y1 -y2)*(y1 - y2);
  return d; 
}