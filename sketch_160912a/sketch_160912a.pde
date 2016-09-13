int x = 250;
int y = 750;
int a = 1;
int b = 1;


void setup(){
  size(1000,1000);
  noFill();
}

void draw(){
  background(200,0,0);
  
  x+=a;
  y-=b;
   

  for(int i = 0; i<300; i+=5){
    
    ellipse(x,500,25+i,25+i);
  
  }
    for(int i = 0; i<300; i+=5){
    ellipse(y,500,25+i,25+i);
    }
    if(x>850 || x<150){
      a = -a;
       
    }
    if(y<150 || y>850){
      b = -b;
    }
      
   
    
   
  
  }

  

