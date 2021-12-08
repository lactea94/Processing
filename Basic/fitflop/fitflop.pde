void setup() {
  size(640, 360);
}
int k = 0;
int change = 1;

void draw() {
  background(255);
  for (int i = 0; i < width; i = i+94) {
    for (int j = 0; j < height; j = j+45) {
      fitflop(i, j, k, 0, 0);
    }
  }
  k = k + change;
  
  if(k > 255 || k < 0){
    change = change * -1;
  } 
  
}

void fitflop(float x, float y, int R, int G, int B) {
  fill(R, G, B);
  stroke(R, G, B);
  rect(x, y, 94, 45);

  fill(255);
  stroke(255);
  //f shape
  beginShape();
  vertex(x+5, y+15);
  vertex(x+5, y+20);
  vertex(x+8, y+20);
  vertex(x+8, y+35);
  vertex(x+13, y+35);
  vertex(x+13, y+20);
  vertex(x+16, y+20);
  vertex(x+16, y+15);
  vertex(x+13, y+15);
  vertex(x+13, y+12);
  vertex(x+16, y+12);
  vertex(x+16, y+7);
  vertex(x+8, y+7);
  vertex(x+8, y+15);
  endShape(CLOSE);

  //i shape
  beginShape();
  vertex(x+19, y+7);
  vertex(x+19, y+12);
  vertex(x+24, y+12);
  vertex(x+24, y+7);
  endShape(CLOSE);

  beginShape();
  vertex(x+19, y+15);
  vertex(x+19, y+35);
  vertex(x+24, y+35);
  vertex(x+24, y+15);
  endShape(CLOSE);

  //t shape
  beginShape();
  vertex(x+27, y+15);
  vertex(x+27, y+20);
  vertex(x+30, y+20);
  vertex(x+30, y+35);
  vertex(x+38, y+35);
  vertex(x+38, y+30);
  vertex(x+35, y+30);
  vertex(x+35, y+20);
  vertex(x+38, y+20);
  vertex(x+38, y+15);
  vertex(x+35, y+15);
  vertex(x+35, y+7);
  vertex(x+30, y+7);
  vertex(x+30, y+15);
  endShape(CLOSE);

  //f shape2
  beginShape();
  vertex(x+38, y+15);
  vertex(x+38, y+20);
  vertex(x+41, y+20);
  vertex(x+41, y+35);
  vertex(x+46, y+35);
  vertex(x+46, y+20);
  vertex(x+16+33, y+20);
  vertex(x+16+33, y+15);
  vertex(x+13+33, y+15);
  vertex(x+13+33, y+12);
  vertex(x+16+33, y+12);
  vertex(x+49, y+7);
  vertex(x+8+33, y+7);
  vertex(x+8+33, y+15);
  endShape(CLOSE);

  //l shape
  beginShape();
  vertex(x+52, y);
  vertex(x+52, y+35);
  vertex(x+57, y+35);
  vertex(x+57, y);
  endShape(CLOSE);

  //o shape
  beginShape();
  vertex(x+60, y+15);
  vertex(x+60, y+35);
  vertex(x+73, y+35);
  vertex(x+73, y+15);
  endShape(CLOSE);

  fill(R, G, B);
  stroke(R, G, B);
  beginShape();
  vertex(x+65, y+20);
  vertex(x+65, y+30);
  vertex(x+68, y+30);
  vertex(x+68, y+20);
  endShape(CLOSE);

  fill(255);
  stroke(255);

  //p shape
  beginShape();
  vertex(x+76, y+15);
  vertex(x+76, y+45);
  vertex(x+81, y+45);
  vertex(x+81, y+35);
  vertex(x+89, y+35);
  vertex(x+89, y+15);
  endShape(CLOSE);

  fill(R, G, B);
  stroke(R, G, B);
  beginShape();
  vertex(x+81, y+20);
  vertex(x+81, y+30);
  vertex(x+84, y+30);
  vertex(x+84, y+20);
  endShape(CLOSE);
}