// 1. Find a really hard Where’s Waldo puzzle, save it, and drop it onto this sketch.
  
void setup() {
  PImage waldo = loadImage("waldo1.jpg"); // 2. Change this to match your file name.
  size(waldo.width, waldo.height);
  image(waldo, 0, 0);
}


void draw() {
  // 3. Use this print statement to find out the coordinates of Waldo

  // 4. If the mouse is on Waldo, print “Waldo found!”
  if(mousePressed && mouseX>=181 && mouseX<=199 && mouseY>=130 && mouseY<=174){
    playWoohoo();
    println("Waldo found!");
  }

  // 5. If Waldo is found, also use the method below to play “Woohoo”


  // 6. If the mouse is pressed and they’re not on Waldo, play “Doh”
  if(mousePressed && mouseX<181 || mouseX>199 || mouseY<130 || mouseY>174){
    playDoh();
  }


}


void playWoohoo() {
  woohoo.stop();
  woohoo.trigger();
}


void playDoh() {
  doh.stop();
  doh.trigger();
}




import ddf.minim.*;
Minim minim = new Minim(this);   
AudioSample doh = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-doh.wav");
AudioSample woohoo = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-woohoo.wav");



