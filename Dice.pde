void setup()
{
  size(500,500);
  noLoop();
  textAlign(CENTER);
}
void draw()
{
  background(0);
  int sum = 0;
  for(int y= 50; y <= 430; y += 70)
    {
    for(int x = 40; x <= 430; x += 70)
    {
       Die one = new Die(x,y);
       one.roll();
       one.show();
       sum = sum + one.rndRoll;
     }
    }
   fill(255);
   textSize(30);
   text(""+sum, 240,40); 
 }

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int rndRoll;
  int dX, dY;
  //variable declarations here
  
  Die(int x, int y) //constructor
  {
    dX = x;
    dY = y;
    //variable initializations here
  }
  void roll()
  {
    rndRoll = (int)(Math.random()*6)+1;
  }
  void show()
  {
    
    fill(255);
    rect(dX,dY,70,70,10);
    fill(0);
    
    if (rndRoll == 1)
    {
      ellipse(dX + 35,dY + 35,10,10);
    }
    else if (rndRoll == 2)
    {
      ellipse(dX + 20, dY + 20, 10, 10);
      ellipse(dX + 50, dY + 50, 10, 10);
    }
    else if (rndRoll == 3)
    {
      ellipse(dX + 20, dY + 20, 10, 10);
      ellipse(dX + 35, dY + 35, 10, 10);
      ellipse(dX + 50, dY + 50, 10, 10);
    }
    else if (rndRoll == 4)
    {
      ellipse(dX + 20, dY + 20, 10, 10);
      ellipse(dX + 20, dY + 50, 10, 10);
      ellipse(dX + 50, dY + 50, 10, 10);
      ellipse(dX + 50, dY + 20, 10, 10);
    }
    else if (rndRoll == 5)
    {
      ellipse(dX + 20, dY + 20, 10, 10);
      ellipse(dX + 20, dY + 50, 10, 10);
      ellipse(dX + 50, dY + 50, 10, 10);
      ellipse(dX + 50, dY + 20, 10, 10);
      ellipse(dX + 35, dY + 35, 10, 10);
    }
     else if (rndRoll == 6)
    {
      ellipse(dX + 20, dY + 20, 10, 10);
      ellipse(dX + 20, dY + 50, 10, 10);
      ellipse(dX + 20, dY + 35, 10, 10);
      ellipse(dX + 50, dY + 50, 10, 10);
      ellipse(dX + 50, dY + 20, 10, 10);
      ellipse(dX + 50, dY + 35, 10, 10);
    }
}
}
