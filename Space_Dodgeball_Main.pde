PImage background;
int bgX = 0; //global variable for background

void setup() {
  size(600, 600);
  background = loadImage("spacebackground.png");
  background.resize(width, height); //set image to fill screen
 playerdet();}

void draw() {
  if (!gamePause) {
    image(background, bgX, 0); //set image to fill entire screen
    image(background, bgX + background.width, 0);
    bgX = bgX -4;   //background scrolls to the right

    if (bgX== -background.width) { //if first image completely off the screen
      bgX = 0; //reset back to initial background
    }
    
    //update + draw falling balls
    for (int i = 0; i < fallBalls.size(); i++) {
      FallingBall fallBall = fallBalls.get(i);
      fallBall.update();
      fallBall.display();

   //collision detection
      if (checkCollision(playerX, playerY, playerSize, fallBall.x, fallBall.y, fallBall.size)) {
        gamePause = true; //stop game if collision is detected
      }

 if (fallBall.y > height) { //remove balls that fall off screen
        fallBalls.remove(i);}}

//create new falling ball at random intervals
    if (frameCount % 60 == 0) {
      fallBalls.add(new FallingBall());}
     dplayer();} 
     
  else  { //display Game Over
    fill(255, 0, 0); //red colour for text
    textSize(30);
    textAlign(CENTER, CENTER); //text set to centre of screen
    text("Game Over!", width / 2, height / 2);}}
  
boolean gamePause = false; //game to end when collision happens

//collision check between player and falling balls
boolean checkCollision(int playerX, int playerY, int playerSize, float objectX, float objectY, float objectSize) {
  float distance = dist(playerX, playerY, objectX, objectY);
  return distance < (playerSize / 2 + objectSize / 2);}
