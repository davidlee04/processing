PImage creeper;
int x = int(random(1000));
int y = int(random(1000));



void setup(){
  size(1000,1000);
  PImage forest = loadImage("forest.jpg");
  forest.resize(1000,1000);
  background(forest);
  creeper=loadImage("creeper.png");
  creeper.resize(7,7);
  image(creeper,x,y);
  
}
boolean isNear(int a,int b, int closeness) {
    if (abs(a-b) < closeness)
    return true;
    else
    return false;  
  }
void draw(){
  if(mousePressed){
    fill(255,0,0);
    ellipse(mouseX,mouseY,13,13);
  }
  if(isNear(x,mouseX,80)&&isNear(y,mouseY,80)&&mousePressed){
    fill(0,255,0);
    ellipse(mouseX,mouseY,13,13);
  }
  if(isNear(x,mouseX,5)&&isNear(y,mouseY,5)){
    fill(0,255,0);
    ellipse(mouseX,mouseY,13,13);
    fill(0,255,0);
    textSize(50);
    text("You Found It!",300,500);
    
  }
  
}
