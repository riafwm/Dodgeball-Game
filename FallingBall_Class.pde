ArrayList<FallingBall> fallBalls = new ArrayList <FallingBall>(); //List for falling balls

class FallingBall { //fallingBall class
float x, y, size, speed;

FallingBall() {
  x= random(width); //random x-pos
  y=0; //start from top of screen
  size= random (35,50); //random sizes for balls
  speed = random (5, 10);} //speed of balls
  
  void update() {
    y+= speed; } //direction of balls= down
    
    void display(){
      fill(168,66,15); //colour for falling balls (meteors)
      ellipse(x, y , size, size); }} //draw balls
      
      
