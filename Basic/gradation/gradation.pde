size(600,400);
background(0);

loadPixels();
for (int x = 0; x < width; x++){
  for(int y = 0; y < height; y++){
    float d;
    d = dist(x,y,width/2,height/2);
    pixels[x+y*width] = color(255-d); 
  }
}
updatePixels();