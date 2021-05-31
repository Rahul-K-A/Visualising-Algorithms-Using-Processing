float r=100;
float g=100;
float b=100;
int row=-50;
int column=0;
void setup() { 
size(1200,720);
background(0);
int i=10;
}

void draw()
{
  if(row<=1150)
  {
    row+=50;
  }
  else{
   row=0;
   column=column+100;
  }
  if(r<=255)
  {
    r+=0.5;
  }
  if(g<=255)
  {
    g+=0.1;
  }
  if(b<=255)
  {
    b+=1; 
  }
  stroke(r,g,b);
  fill(r,g,b);
  rect(row,column,100,100);

}
