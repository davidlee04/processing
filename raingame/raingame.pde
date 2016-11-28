int y = 70;
int x; 
int score;
void setup(){
  size(750,750);
  score = 0;
}
int randomNumber = (int) random(width);
void draw(){

  y+=5;
  background(255,0,0);
  if(y>750){
    randomNumber = (int) random(width);
    y = 70;
    ellipse(randomNumber,y,50,75);
  }
  fill(0,0,255);
  noStroke();
  ellipse(randomNumber,y,50,75);
  
  fill(0,255,0);
  rect(mouseX,675,75,75);
  
  checkCatch();
  
  fill(0,0,0);
  textSize(16);
  text("Score: " + score, 20, 20);
}
void checkCatch(){
if(y == 750 && (randomNumber-75) < mouseX && (randomNumber+75) > mouseX){
  score++;
}else if(y == 750 && (randomNumber-25) > mouseX && score > 0 /*&& (randomNumber+75) < mouseX*/){
  score--;
}
println("Your score is now: " + score);
println(score);
}
