int xPosition = 0;
int yPosition = 100;
int xSpeed = 5;
int ySpeed = 5;
import ddf.minim.*;  
Minim minim;  
PImage backgroundImage;
void setup() 
{
  size (750, 750);
  minim = new Minim (this);
  backgroundImage = loadImage("http://ser.wp.st-andrews.ac.uk/files/2015/03/st-andrews-golf.jpg");
}
void draw () 
{
  xPosition += xSpeed;
  yPosition += ySpeed;
  background(200, 200, 300);
  image(backgroundImage, 0, 0);  
  image(backgroundImage, 0, 0, 750, 750);
  ellipse(xPosition, yPosition, 30, 30);
  fill(355, 355, 355);
  stroke (355, 355, 355);
  if (xPosition >= 750 || xPosition == 0) 
  {
    xSpeed = -xSpeed;
  }
  else if (yPosition >= 750 || yPosition == 0)
  {
    ySpeed = -ySpeed;
  }
  rect(mouseX, 710, 125, 20);
  if (intersects() == true) 
  {
    xSpeed = -xSpeed;
  }
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY - paddleLength && ballX > paddleX && ballX < paddleX + paddleLength)
    return true;
  else 
    return false;
}

