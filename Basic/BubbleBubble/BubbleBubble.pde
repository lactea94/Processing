Bubble b1;
Bubble b2;
Bubble b3;
Bubble b4;
Bubble b5;
Bubble b6;
Bubble b7;
Bubble b8;

void setup(){
  size(640,360);
  b1 = new Bubble(32);
  b2 = new Bubble(16);
  b3 = new Bubble(45);
  b4 = new Bubble(64);
  b5 = new Bubble(50);
  b6 = new Bubble(20);
  b7 = new Bubble(40);
  b8 = new Bubble(80);
}


void draw() {
  background(255);
  b1.ascend();
  b1.display();
  b1.top();
  
  b2.ascend();
  b2.display();
  b2.top();
  
  b3.ascend();
  b3.display();
  b3.top();
  
  b4.ascend();
  b4.display();
  b4.top();
  
  b5.ascend();
  b5.display();
  b5.top();
  
  b6.ascend();
  b6.display();
  b6.top();
  
  b7.ascend();
  b7.display();
  b7.top();
  
  b8.ascend();
  b8.display();
  b8.top();
}