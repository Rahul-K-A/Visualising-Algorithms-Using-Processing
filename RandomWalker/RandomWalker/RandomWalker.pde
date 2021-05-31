
Walker MyWalker;

void setup()
{
  size(640,480);  
  background(0);
  MyWalker=new Walker();
}

void draw()
{
  MyWalker.Step();
  MyWalker.Display();
}


class Walker{
  int x;
  int y;
  //Constructor
  Walker(){
    x=width/2;
    y=height/2;
  }
  //Display function
  void Display(){
    stroke(255);
    point(x,y);
  }
  //Step selector
  void Step()
  {
    int stepx=int(random(3))-1;
    int stepy=int(random(3))-1;
    x+=stepx;
    y+=stepy;
  }
    
    
}
