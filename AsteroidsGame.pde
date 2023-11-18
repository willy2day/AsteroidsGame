//Astroids willy;
SpaceShip ship;
 
Star [] sky = new Star[50];
//Astroids [] ballz = new Astroids[10];
void setup() {
  size(1000, 1000);
  frameRate(60);
  
//  willy = new Astroids();
  ship = new SpaceShip();
  for (int i = 0; i < 50; i++) {//stars initlize
    sky[i] = new Star();
  }
  //for (int i=0; i< 10; i++){
    //ballz[i]= new Astroids();
  }
}

void draw() {
  background(0);
   for (int i = 0; i < 50; i++) {//stars
    sky[i].show();
  }
//for (int i=0; i< 10; i++){
    //ballz[i].move();
    //ballz[i].show();
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
