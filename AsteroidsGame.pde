Astroids willy;
SpaceShip ship;
class Astroids extends Floater
{
  private double rotSpeed;
  public Astroids() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*40)-20;
    yCorners[0] = (int)(Math.random()*10)-20;
    xCorners[1] = (int)(Math.random()*20)-10;
    yCorners[1] = (int)(Math.random()*40)-10;
    xCorners[2] = (int)(Math.random()*10)-20;
    yCorners[2] = (int)(Math.random()*40)-20;
    xCorners[3] = (int)(Math.random()*10)-20;
    yCorners[3] = (int)(Math.random()*40)-10;
    xCorners[4] = (int)(Math.random()*40)-20;
    yCorners[4] = (int)(Math.random()*40)-20;
    xCorners[5] = 5;
    yCorners[5] = -30;
    myColor = color(190);
    myCenterX = Math.random()*1000;
    myCenterY = Math.random()*1000;
    myXspeed = Math.random()*10;
    myYspeed = Math.random()*10;
    rotSpeed = (Math.random()*10)-5;
    if (rotSpeed < 1 || rotSpeed > -1) {
      rotSpeed = (Math.random()*10)-5;
    }
  }}
 
Star [] sky = new Star[50];
Astroids [] ballz = new Astroids[10];
void setup() {
  size(1000, 1000);
  frameRate(60);
  
  willy = new Astroids();
  ship = new SpaceShip();
  for (int i = 0; i < 50; i++) {//stars initlize
    sky[i] = new Star();
  }
  for (int i=0; i< 10; i++){
    ballz[i]= new Astroids();
  }
}

void draw() {
  background(0);
   for (int i = 0; i < 50; i++) {//stars
    sky[i].show();
  }
for (int i=0; i< 10; i++){
    ballz[i].move();
    ballz[i].show();
  }
  
  //movement
  ship.move();
  ship.show();
}

public void keyPressed(){
  if(keyPressed){
    if(key=='a')
      ship.turn(-10);
    else if(key=='d')
      ship.turn(10);
    else if(key=='w')
      ship.accelerate(1);
    else if (key=='h')
     ship.hyperSpace();
      
      
  }
}
