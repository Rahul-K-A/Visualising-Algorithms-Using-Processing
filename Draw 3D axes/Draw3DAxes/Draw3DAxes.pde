void setup()
{
  size(640,480,P3D);
  smooth();
}

void draw()
{
  background(0);
  translate(width/2,height/2,-50);
  rotateY(map(mouseX,0,width,-PI,PI));
  rotateX(map(mouseY,0,height,-PI,PI));
  textSize(15.f);
  DrawShapes();
}

void DrawShapes(){
  stroke(255,0,0);
  line(100,0,0,-100,0,0);
  text("+x",100,0,0);
  text("-+x",-100,0,0);
  stroke(0,255,0);
  line(0,0,100,0,0,-100);
  text("+z",0,0,100);
  text("-z",0,0,-100);
  stroke(0,0,255);
  line(0,100,0,0,-100,0);
  text("+y",0,100,0);
  text("-y",0,-100,0);
}
  
  
