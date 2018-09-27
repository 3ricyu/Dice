Die one;
void setup()
{
  size(500,500);
	noLoop();
  
}
void draw()
{
  background(0);
  Die one = new Die(50,50);
  one.roll();
  one.show();
    
  
 }

 
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dX, dY, rndRoll;
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
    System.out.println(rndRoll);
	}
	void show()
	{
    {
      for(int y= 50; y <= 500; y += 50)
  {
    for(int x = 50; x <= 500; y += 50)
    {
    fill(255);
    rect(dX,dY,70,70,10);
    fill(0);
    }
  }
  
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
}
