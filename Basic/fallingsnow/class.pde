class Ball {
 void fallingball(float X, float Y, float xmoving, float ymoving){
   fill(255);
   stroke(255);  
   ellipse(X,Y,16,16);

   X = X + xmoving;
   println(X);
   Y = Y  + ymoving;
   println(Y);
 }
}