import peasy.*;

float x=20;
float y=1;
float z=1;


float sigma=10.f;
float rho=28.f;
float beta=8.f/3.f;
float dt=0.01;

ArrayList<PVector> PointsVec;
PeasyCam cam;

void setup()
{
  size(640,480,P3D);
  colorMode(HSB);
  cam=new PeasyCam(this,500);
  PointsVec=new ArrayList<PVector>();
}

void draw(){
   background(0);
   float dx= sigma*( y - x ) * dt;
   float dy= (x*( rho - z ) - y)*dt;
   float dz= ((x*y) - (beta*z))*dt;
   x+=dx;
   y+=dy;
   z+=dz;
   PointsVec.add(new PVector(x,y,z));
   scale(5);
   noFill();
   float hVal=0;
   beginShape();
     for(PVector v:PointsVec)
     {
       stroke(hVal,255,255);
       vertex(v.x,v.y,v.x);
       hVal+=0.1;
       if(hVal>255){
         hVal=0;
       }
     }
   endShape();
}
