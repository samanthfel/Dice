Die dice;
int sum;
void setup()
{
  noLoop();
  size(400,400);
  background(0);
  stroke(0);
  strokeWeight(11);
}
void draw()
{
background(0);
  for(int y = 20; y <= 400; y+=130){
    for(int x = 20; x <= 400; x+=130){
      dice  = new Die(x,y);
      dice.show();
    }
  } 
  fill(220, 232, 252);
  textSize(15);
  text("Total Dots: "+sum,150,390);
}
void mousePressed()
{
    redraw();
    sum = 0;
}
class Die //models one single dice cube
{
    //member variable declarations here
    int myX, myY, numDots;
    Die(int x, int y) //constructor
    {
      myX = x;
      myY = y;
      numDots = (int)(Math.random()*6)+1;
    }
    void roll()
    {
       myX += 130;
       myY += 130;
    }
    void show()
    {
     fill(220, 232, 252);
     rect(myX,myY,100,100,28);
     numDots = (int)(Math.random()*6)+1;
     
     //dots
     if (numDots == 1){
       point(50+myX,50+myY);
     }
     else if (numDots == 2){
      point(30+myX,50+myY);
      point(70+myX,50+myY);
    }
    else if (numDots == 3){
      point(30+myX,30+myY);
      point(50+myX,50+myY);
      point(70+myX,70+myY);
    }
    else if (numDots == 4){
      point(30+myX,30+myY);
      point(70+myX,70+myY);
      point(30+myX,70+myY);
      point(70+myX,30+myY);
    }
    else if (numDots == 5){
      point(30+myX,30+myY);
      point(70+myX,70+myY);
      point(30+myX,70+myY);
      point(70+myX,30+myY);
      point(50+myX,50+myY);
    }
    else{
      point(30+myX,30+myY);
      point(50+myX,30+myY);
      point(70+myX,30+myY);
      point(30+myX,70+myY);
      point(50+myX,70+myY);
      point(70+myX,70+myY);
    }
    sum = sum + numDots;
  }
}
