void setup() {
  size(600,450,P3D);
  background(0);

}

void draw() {
  //lights(); 
  //pushMatrix();
  //translate(130, height/2, 0);
  //rotateY(1.25);
  //rotateX(-0.4);
  //noStroke();
  //box(100);
  //popMatrix();
  
  lights();
  pushMatrix();
  translate(100, height*0.35, -200);
  noFill();
  stroke(255);
  sphere(280);
  popMatrix();
}