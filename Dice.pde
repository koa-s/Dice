void setup()
{
  noLoop();
  size(300, 300);
}
void draw()
{
  int r = (int)(Math.random()*255);
  int g = (int)(Math.random()*255);
  int b = (int)(Math.random()*255);
  background(r, g, b);

  for (int i = 10; i<=240; i+=60)
  {
    for (int j = 10; j<=240; j+=60)
    {
      Die eachDie = new Die(j, i);
      eachDie.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dots;
  int myX;
  int myY;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    dots = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255, 255, 255);  
    rect(myX, myY, 50, 50);

    roll();

    fill(0, 0, 0);
    if (dots ==1) {
      ellipse(myX+25, myY+25, 5, 5);
    } else if (dots==2) {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
    } else if (dots==3) {
      ellipse(myX+25, myY+25, 5, 5);
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
    } else if (dots==4) {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
      ellipse(myX+10, myY+40, 5, 5);
      ellipse(myX+40, myY+10, 5, 5);
    } else if (dots==5) {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
      ellipse(myX+10, myY+40, 5, 5);
      ellipse(myX+40, myY+10, 5, 5);
      ellipse(myX+25, myY+25, 5, 5);
    } else {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
      ellipse(myX+10, myY+40, 5, 5);
      ellipse(myX+40, myY+10, 5, 5);
      ellipse(myX+10, myY+25, 5, 5);
      ellipse(myX+40, myY+25, 5, 5);
    }
  }
}
