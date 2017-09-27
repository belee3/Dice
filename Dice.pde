int result;
Die joe= new Die(150,150);
void setup()
{
  noLoop();
  textAlign(CENTER);
  size(600,600);
}
void draw()
{
  int Sum=0;
  background(12,103,184);
  for(int y=50;y<550;y+=100){
    for(int x=50;x<550;x+=100){
  Die joe= new Die(x,y);
  joe.roll();
  joe.show();
  Sum= result+Sum;
    }
  }
  textSize(20);
  text("Sum: " + Sum, 300,580);
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
    result=(int)((Math.random()*6)+1);
    myX=x;
    myY=y;
  }
  void roll()
  {
    //your code here
  }
  void show()
  { 
    
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    rect(myX,myY,80,80,15);

    if(result==1){
      ellipse(myX+40,myY+40,17,17);
    }
    if(result==2){
      ellipse(myX+40,myY+20,17,17);
      ellipse(myX+40,myY+60,17,17);
    }
    if(result==3){
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+40,myY+40,17,17);
      ellipse(myX+60,myY+60,17,17);
    }
    if(result==4){
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+60,myY+20,17,17);
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+60,myY+60,17,17);
    }
    if(result==5){
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+60,myY+20,17,17);
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+60,myY+60,17,17);
      ellipse(myX+40,myY+40,17,17);
    }
    if(result==6){
      ellipse(myX+20,myY+20,17,17);
      ellipse(myX+20,myY+40,17,17);
      ellipse(myX+20,myY+60,17,17);
      ellipse(myX+60,myY+20,17,17);
      ellipse(myX+60,myY+40,17,17);
      ellipse(myX+60,myY+60,17,17);
    }
  }
}
