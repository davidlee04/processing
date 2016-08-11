  int a = 215;
  int b = 175;
  int acceleration = 2;
  import ddf.minim.*;
  AudioSample sound;
  PImage cat;
  PImage scaredcat;
  PImage boom;

void setup(){
  size(500,500);
  PImage cat = loadImage("cat.jpg");
  cat.resize(500,500);
  background(cat);
  Minim minim = new Minim(this);
  sound = minim.loadSample("laser.wav");
}

void draw(){
  PImage cat = loadImage("cat.jpg");
  PImage boom = loadImage("boom.png");
  PImage scaredcat = loadImage("scaredcat.png");
  boom.resize(20,20);
  scaredcat.resize(120,110);
  image(scaredcat,400,325);
  fill(255,0,0);
  ellipse(a,b,75,50);
  ellipse(a+70,b,75,50);
  if(a>397){
    cat.resize(500,500);
    scaredcat.resize(100,100);
    boom.resize(100,100);
    background(cat);
    image(boom,420,325);
    
    a=215;
    b=175;
    acceleration=2;
    
  }
  if(a>501){

  }
  println(a+", " + b);
  noStroke();
}
void keyPressed(){
  if(acceleration==2){
    sound.trigger();
  }
  a-=-2*acceleration;
  b-=-2*acceleration;
  acceleration++;
  
}
