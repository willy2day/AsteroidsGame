  class SpaceShip extends Floater {
  SpaceShip() {
    myColor=(255);
    myXspeed=5;
    myYspeed=5;
    myCenterX=300;
    myCenterY=300;
    corners = 4;
    myPointDirection=0;
    xCorners = new int[]{-8, 16, -8, -2};  // Updated variable name
    yCorners = new int[]{-8, 0, 8, 0};     // Updated variable name
  }
 public void setmyXspeed(double x){
   myXspeed=x;
 }
  public void setmyYspeed(double y){
   myYspeed=y;
 }
 public void hyperSpace(){
    ship.setmyXspeed(0);
    ship.setmyYspeed(0);
    myCenterX=Math.random()*500;
    myCenterY=Math.random()*500;
    myPointDirection= Math.random()*500;
 }
}
