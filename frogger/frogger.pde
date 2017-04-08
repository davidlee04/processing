int frogX = 200;
int frogY = 385;
int frogHop = 10;

Car carJuan = new Car(0, 25, 50, 5, (int)random(255), (int)random(255), (int)random(255));
Car carDos = new Car(0, 120, 65, 5, (int)random(255), (int)random(255), (int)random(255));
Car carTres = new Car(345, 180, 55, 7, (int)random(255), (int)random(255), (int)random(255));

void setup() {
  size(400, 400);
}

void draw() {
  background(0, 0, 0);
  fill(0, 255, 0);
  ellipse(frogX, frogY, 10, 10);
  frogCollision();
  carJuan.display();
  carDos.display();
  carTres.display();
  carJuan.carMovementRight();
  carDos.carMovementRight();
  carTres.carMovementLeft();
  if (intersects(carJuan) || intersects(carDos) || intersects(carTres))
  {
    frogX = 200;
    frogY = 385;
  }
    
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      frogY = frogY-frogHop;
    } else if (keyCode == DOWN) {
      frogY = frogY+frogHop;
    } else if (keyCode == RIGHT) {
      frogX = frogX+frogHop;
    } else if (keyCode == LEFT) {
      frogX = frogX-frogHop;
    }
  }
}

void frogCollision()
{
  if (frogX > 385) {
    frogX = 385;
  }
  if (frogX < 15) {
    frogX = 15;
  }
  if (frogY > 385) {
    frogY = 385;
  }
  if (frogY < 15) {
    frogY = 15;
  }
}

class Car {
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  int carRed;
  int carGreen;
  int carBlue;

  public Car(int carX, int carY, int carSize, int carSpeed, int carRed, int carGreen, int carBlue) {
    this.carX = carX;
    this.carY = carY;
    this.carSize = carSize;
    this.carSpeed = carSpeed;
    this.carRed = carRed;
    this.carGreen = carGreen;
    this.carBlue = carBlue;
  }

  void display() 
  {
    fill(carRed, carGreen, carBlue);
    rect(carX, carY, carSize, 25);
  }

  void carMovementRight()
  {
    if (carX<400) 
    {
      carX = carX+carSpeed;
    } else if (carX>360)
    {
      carX = 0;
      carX = carX+carSpeed;
    }
  }

  void carMovementLeft()
  {
    if (carX>0) 
    {
      carX = carX-carSpeed;
    } else if (carX<0)
    {
      carX = 400;
      carX = carX-carSpeed;
    }
  }

  public int getX()
  {
    return carX;
  }

  public int getY()
  {
    return carY;
  }

  public int getSize()
  {
    return carSize;
  }

  
}
  public boolean intersects(Car car) {
    //fix collision 
    if ((frogY > car.getY() && frogY < car.getY()+car.carSize && (frogX > car.getX() && frogX < car.getX()+car.getSize())))
      return true;
    else 
      return false;
  
  }