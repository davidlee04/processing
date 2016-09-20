

void setup(){
  PImage zombie = loadImage("zombie.png");
  size(255,255);
  zombie.resize(255,255);
  image(zombie,0,0);
}

void draw(){
  fill(mouseX,0,mouseY);
  ellipse(50,123,50,50);
  fill(mouseY,mouseX,0);
  ellipse(165,114,75,75);
  fill(0,0,0);
  ellipse(50,123,25,25);
  ellipse(165,114,38,38);
  println(mouseX,mouseY);
}
