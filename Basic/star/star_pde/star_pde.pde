void setup(){
 size(640,360); 
}

void draw(){
  fill(127);
  stroke(255);
  strokeWeight(2);
   
  beginShape();
  vertex(100,50);
  vertex(114,80);
  vertex(147,85);
  vertex(123,107);
  vertex(129,140);
  vertex(100,125);
  vertex(71,140);
  vertex(77,107);
  vertex(53,85);
  vertex(86,80);
  endShape(CLOSE);
}