int ranColor;
int result;
Die first;
void setup()
{
  noLoop();
  size(400,400);
//  background(ranColor, ranColor, ranColor);
  background(241, 141, 215);
}
void draw()
{
  for (int y=100; y<=300; y+=75) {
    for (int x=100; x<=300; x+=75) {
      Die first = new Die(x,y,100);
      first.roll();
      first.show();
    }
  }
//  ranColor=(int)((Math.random()*255)+1);
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
    result=(int)((Math.random()*6)+1);
//result=2;
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
      ellipse(myX+25, myY+25, 10, 10);
    }
    if (result==2) {
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
    }
    if (result==3) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    if (result==4) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
    }
    if (result==5) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    }
    if (result==6) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
    }
    //your code here
  }
}
