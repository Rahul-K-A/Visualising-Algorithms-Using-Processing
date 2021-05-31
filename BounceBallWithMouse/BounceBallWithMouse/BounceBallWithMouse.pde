
PVector PosVec;
PVector VeloVec;
PVector FinalVec;
float friction=random(10);

void setup()
{
  size(640,480);
  PosVec=new PVector(width/2,height/2);
  VeloVec=new PVector(-2,-2);
  FinalVec=new PVector(0,0);
  background(0);
}

void draw(){
 filter(BLUR);
 if(mousePressed){
 VeloVec.x=(mouseX-PosVec.x)/50.f;
 VeloVec.y=(mouseY-PosVec.y)/50.f;
 }
 FinalVec.x=PosVec.x+VeloVec.x;
 FinalVec.y=PosVec.y+VeloVec.y;
 stroke(FinalVec.x,FinalVec.y,random(255));
 fill(255);
 ellipse(FinalVec.x,FinalVec.y,16,16);
 PosVec.x=FinalVec.x;
 PosVec.y=FinalVec.y;
 if((PosVec.x>width)||(PosVec.x<0))
 {
  VeloVec.x*=-1;
 }
 if((PosVec.y>height)||(PosVec.y<0))
 {
  VeloVec.y*=-1;
 }
}
