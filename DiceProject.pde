void setup()
{
  noLoop();
  size(635,675);
}
void draw()
{
  background(198);
  int damageDealt = 0;
  for (int y = 25; y < 600; y += 60){
   for (int x = 25; x < 600; x += 60){
     Die Die1 = new Die (x,y);
     Die1.show();
     if (Die1.face == 1) {
       damageDealt++;
     } else if (Die1.face == 2) {
       damageDealt += 2;
     } else if (Die1.face == 3) {
       damageDealt += 3;
     } else if (Die1.face == 4) {
       damageDealt += 4;
     } else if (Die1.face == 5) {
       damageDealt += 5;
     } else if (Die1.face == 6) {
       damageDealt += 6;
     } 
   }
  }
  fill (0,0,0);
  text ("You dealt " + damageDealt + " damage!", 25, 630);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, face;//variable declarations here
  
  Die(int x_, int y_) //constructor
  {
    myX = x_;//variable initializations here
    myY = y_;
    roll();
  }
  void roll()
  {
    if (((int) (Math.random()*6))+1 == 1){
      face = 1;
    } else if (((int) (Math.random()*6))+1 == 2){
      face = 2;
    } else if (((int) (Math.random()*6))+1 == 3){
      face = 3;
    } else if (((int) (Math.random()*6))+1 == 4){
      face = 4;
    } else if (((int) (Math.random()*6))+1 == 5){
      face = 5;
    } else if (((int) (Math.random()*6))+1 == 6){
      face = 6;
    }
  }
  void show()
  {
    fill (0,0,0);
    square(myX,myY,50);
    if (face == 1){
      fill (255,255,255);
      ellipse (myX+25, myY+25,15,15);
    } else if (face == 2) {
      fill (255,255,255);
      ellipse (myX+35,myY+15,15,15);
      ellipse (myX+15,myY+35,15,15);
    } else if (face == 3) {
      fill (255,255,255);
      ellipse (myX+35,myY+15,15,15);
      ellipse (myX+25, myY+25,15,15);
      ellipse (myX+15,myY+35,15,15);
    } else if (face == 4) {
      fill (255,255,255);
      ellipse (myX+15,myY+15,15,15);
      ellipse (myX+15,myY+35,15,15);
      ellipse (myX+35,myY+15,15,15);
      ellipse (myX+35,myY+35,15,15);
    } else if (face == 5) {
      fill (255,255,255);
      ellipse (myX+15,myY+15,15,15);
      ellipse (myX+35,myY+15,15,15);
      ellipse (myX+15,myY+35,15,15);
      ellipse (myX+35,myY+35,15,15);
      ellipse (myX+25, myY+25,15,15);
    } else if (face == 6) {
      fill (255,255,255);
      ellipse (myX+15,myY+15,15,15);
      ellipse (myX+15,myY+25,15,15);
      ellipse (myX+15,myY+35,15,15);
      ellipse (myX+35,myY+15,15,15);
      ellipse (myX+35,myY+25,15,15);
      ellipse (myX+35,myY+35,15,15);
    } else if (face == 0) {
      fill (255,255,255);
      text ("You got zeroes",0,10);
    }
  }
}
