import processing.video.*;

Capture video;

void setup(){
  
  size(600,400);
  video = new Capture(this, 640,480,30);
  video.start();
  
}

//snapshot
void mousePressed() {
  //video.read();
}

//video
void captureEvent(Capture video) {
  video.read();
}

void draw(){
  background(0);
  image(video,0,0,600,400);
}