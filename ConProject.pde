Coin aCoin;

void setup()
{
  size(525, 600);
  textAlign(CENTER,CENTER);
  aCoin=new Coin(50,150);
  noLoop();
}
void draw()
{
  background(190);
  int numTails = 0;
  for (int y = 50; y<500; y+=70) {
    for (int x = 50; x<500; x+=60) {
      Coin aCoin = new Coin(x,y);
      aCoin.show();
      if(aCoin.face == false) {
        numTails++;
      }
    }
  }
  fill(0,0,255);
  text("There are " +numTails + " tails up coins. This is " + numTails/56.0*100 + "% of the total.",173, 550);
}
void mousePressed()
{
  redraw();
}
class Coin
{
  //three member variables
  boolean face; 
  int myX, myY;
  //two member functions and a constructor
  Coin(int x_, int y_) //constructor
  {
    myX = x_;
    myY = y_;
    flip();
  }
  void flip()
  {
    if ((int) (Math.random()*100+1) >= 85) {
      face = true;
    } else {
      face = false;
    }
  }
  void show()
  {
    if (face){
      fill(0,200,55);
      text("Heads", myX, myY + 30);
    } else {
      fill(0,0,255);
      text("Tails", myX, myY + 30);
    }
    ellipse(myX,myY,50,50);
  }
}
