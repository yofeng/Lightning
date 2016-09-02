void setup()
{
  size(300,300);
  //stokeWeight();
  background(0);
}

int startX=0;
int startY=150;
int endX=0;
int endY=150;
int mouseClicks=0;

int r = ((int)(Math.random()*255)+1);
int g = ((int)(Math.random()*255)+1);
int b = ((int)(Math.random()*255)+1);

void draw()
{
	stroke(r,g,b);
	
	while(endX <= 300)
	{
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)(Math.random()*20)-10;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	if(mouseClicks < 5)
	{
		text("click", 50, 150);
	}
	else
	{
		text("Game Over", 50, 150);
	}
}
void mousePressed()
{
	startX = 0;
	startY=150;
	endX=0;
	endY=150;
	mouseClicks=mouseClicks+1;
}

