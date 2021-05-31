PVector Coordinates=new PVector();
PVector Centre;
float Radius=80;
float AngularVelocity=0;
float AngularAcceleration=0;
float Gravity=0.4;
float Angle=PI/2;
float Friction=0.1;
float Damping=0.995;

void setup()
{
 
  size(640,480);
  Centre=new PVector(width/2,height/2);
}

void draw()
{
  filter(BLUR);
  background(0);
  noStroke();
  fill(255);
  circle(Centre.x,Centre.y,10);                                                                                               
  CalculateAngle();
  CalculateBobPosition();
  drawPendulum();
}

void CalculateAngle()
{
   AngularAcceleration=-1*(Gravity/Radius)*sin(Angle);
   println("AA is"+AngularAcceleration);
   AngularVelocity+=AngularAcceleration;
   AngularVelocity*=Damping;
   println("AV is"+AngularVelocity);
   Angle+=AngularVelocity;
   println("Angle is"+Angle);
} //<>//

void CalculateBobPosition()
{
  Coordinates.x=(Radius*sin(Angle))+Centre.x;
  println("x coord is"+ Coordinates.x);
  Coordinates.y=(Radius*cos(Angle))+Centre.y; 
  println("y coord is"+ Coordinates.y);
}

void drawPendulum()
{
  noStroke();
  fill(0,255,0);
  circle(Coordinates.x,Coordinates.y,20);
  stroke(255);
  line(Centre.x,Centre.y,Coordinates.x,Coordinates.y);
}
