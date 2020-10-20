void setup() {
  size(380,385);
  noLoop();
}
void draw() {
  for(int y=0; y<385; y+= 15){
    for(int x=0; x<380; x+= 55){
      Brick bob = new Brick(x,y);
      bob.show();
    }
  }
}
class Brick {
  int myX, myY;
  Brick(int x_, int y_)
  {
    myX=x_;
    myY=y_;
  }
  void show()
  {
    noStroke();
    fill(255,0,0);
    rect(myX,myY,50,10);
  }
}
