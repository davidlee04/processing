int y = 70;
int score = 0;
void setup(){
  size(750,750);
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
  
  fill(0,0,0);
  textSize(16);
  text("Score: " + score, 20, 20);
}
void checkCatch(){
if (y > mouseX && y < mouseX+75)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}
