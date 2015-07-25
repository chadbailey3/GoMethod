int xPosition = 0;
int yPosition = 100;
int xSpeed = 4;
int ySpeed = 4;
int paddleX = 100;
int paddleY = 710;
int paddleLength = 125;
import ddf.minim.*;  
Minim minim;  
PImage backgroundImage;
void setup() 
{
  size (750, 750);
  minim = new Minim (this);
  backgroundImage = loadImage("st-andrews-golf.jpg");
}
void draw () 
{
  xPosition += xSpeed;
  yPosition += ySpeed; 
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
  paddleX = mouseX;
  rect(paddleX, paddleY, paddleLength, 20);
  if (intersects(xPosition, yPosition, paddleX, paddleY+110, paddleLength) == true) 
  {
    ySpeed = -ySpeed;
  }
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY - paddleLength && ballX > paddleX && ballX < paddleX + paddleLength)
    return true;
  else 
    return false;
}

