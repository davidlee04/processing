int x = 0;
int y = 0;

void setup(){
  size(500,500);
  PImage pie = loadImage("pie.png");
  image(pie, 500, 500);  
}
void draw(){
  
  x = mouseX;
  y = mouseY;
  background(255,255,255);
  fill(255,255,255);
  ellipse(160,100,110,60);
  ellipse(340,100,110,60);
  fill(0,0,0);
  println(mouseY);
  if(x>197){
    x = 196;
  }
  if(x<124){
    x = 125;
  }
  if(y>112){
    y = 111;
  }
  if(y<88){
    y = 89;
  }
  ellipse(x+180,y,35,35);
  ellipse(x,y,35,35);
}
