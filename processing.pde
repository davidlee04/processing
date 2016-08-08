void setup(){
  size(500,500);
}
void draw(){
  background(0,136,238);
  if(mouseX<width-100){
  
  rect(mouseX,400,100,30);
 
}else{
  rect(width-100,400,100,30);
}
  fill(255,0,0);
  rect(0,500,500,20);
}
