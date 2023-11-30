Astroids willy;
SpaceShip ship;
ArrayList <Astroids> rocks = new ArrayList<Astroids>();
Star [] sky = new Star[50];

void setup() {
  size(1000, 1000);
  frameRate(100);
  
  willy = new Astroids();
  ship = new SpaceShip();
  for (int i = 0; i < 50; i++) {//stars initlize
    sky[i] = new Star();
  }
  rocks.add(new Astroids());
  rocks.add(new Astroids());
  rocks.add(new Astroids());
  rocks.add(new Astroids());
  rocks.add(new Astroids());
  
}

void draw() {
  background(0);
   for (int i = 0; i < 50; i++) {//stars
    sky[i].show();
  }
for (int i=0; i< rocks.size(); i++){
    rocks.get(i).move();
    rocks.get(i).show();
    if (dist((float)rocks.get(i).myCenterX,(float) rocks.get(i).myCenterY, (float)ship.myCenterX, (float)ship.myCenterY) < 20) {
      rocks.remove(i);
  }
  //movement
  ship.move();
  ship.show();
}}

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

