int result;
Die diu= new Die(150,150);
void setup()
{
  noLoop();
  textAlign(CENTER);
  size(600,600);
}
void draw()
{
  int Sum=0;
  background(0);
  for(int y=50;y<550;y+=100){
    for(int x=50;x<550;x+=100){
  Die diu= new Die(x,y);
  diu.roll();
  diu.show();
  Sum= result+Sum;
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube 
{
  int myX,myY,Sum;
  Die(int x,int y) //constructor
  {
    Sum=(int)((Math.random()*6)+1);
    myX=x;
    myY=y;
  }
  void roll()
  {
    //your code here
  }
  void show()
  { 

    rect(myX,myY,80,80);

    if(Sum==1){
      ellipse(myX+40,myY+40,17,17);
    }
    if(Sum==2){
      ellipse(myX+40,myY+20,17,17);
      ellipse(myX+40,myY+60,17,17);
    }
    if(Sum==3){
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+40,myY+40,17,17);
      ellipse(myX+60,myY+60,17,17);
    }
    if(Sum==4){
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+60,myY+20,17,17);
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+60,myY+60,17,17);
    }
    if(Sum==5){
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+60,myY+20,17,17);
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+60,myY+60,17,17);
      ellipse(myX+40,myY+40,17,17);
    }
    if(Sum==6){
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+20,myY+40,17,17);
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+60,myY+20,17,17);
      ellipse(myX+60,myY+40,17,17);
      ellipse(myX+60,myY+60,17,17);
    }
  }
}
