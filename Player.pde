int playerX; //player X coordinate
int playerY; //player Y coordinate
int playerSize = 40; //player size

void playerdet(){
  playerX = width/2; //player X position set to centre of screen
  playerY = height/2 + 200; //player's Y position set to lower part of screen
}
void dplayer(){
  //draw player
  fill(0, 255, 0); //green colour
  ellipseMode(CENTER);
  ellipse(playerX, playerY, playerSize, playerSize);}
  
  void keyPressed(){
    //moves player in opposite direction of the key pressed
    if (keyCode == LEFT){
      playerX +=20; //move right when left key is pressed
    } else if (keyCode == RIGHT) {
      playerX -=20;}} //move left when the right key is pressed
