int ranColor;
int result;
Die first;
void setup()
{
  noLoop();
  size(400,400);
  background(241, 123, 143);
}
void draw()
{
  for (int y=100; y<=350; y+=75) {
    for (int x=100; x<=350; x+=75) {
      Die first = new Die(100,100,100);
      first.roll();
      first.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, Width;//variable declarations here
  Die(int x, int y, int w) //constructor
  {
//    result=(int)((Math.random()*1)+1);
result=1;
    myX=x;
    myY=y;
    Width=w;
    //variable initializations here
  }
  void roll()
  {
    
      
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX,myY,50,50);
    fill(0);
    if (result==1) {
      ellipse(myX, myY, 10, 10);
    }
    
    //your code here
  }
}
