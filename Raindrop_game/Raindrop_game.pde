//Declare variables and images
//Create boolean start to control start of game
PImage paris;
int rx;
int ry;
int rw;
int rh;
int textx = 0;
int texty = 100;
int index = 0; 
int oldTime = 0;
int score = 0;
boolean start;
int lives = 3;
int d = 75;

//Create a new array called Rain for raindrops
Rain[] drops = new Rain[100];
//Create a new array called Umbrella for umbrella lives
Umbrella[] umbrella = new Umbrella[100];
//Create catcher c to use catcher class in game
Catcher c;

//Set up program size, declare variables only used in this tab, set boolean start as false
void setup() {
  size(displayWidth, displayHeight);
  rx = width/2;
  ry = height/2;
  rw = 300;
  rh = 150;
  start = false;  
  paris = loadImage("ParisRain.jpg");
  //The following for loop creates a new raindrop
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
//The following for loop creates a new umbrella  
  for (int u = 0; u < umbrella.length; u++) {
    umbrella[u] = new Umbrella();
  }
//Create a new catcher to use in game
  c = new Catcher();
}
  
void draw() {
  //The following if statement says that if boolean start equals false, the following will happen
  //This serves as the start screen of the game, featuring a "BEGIN" button
  if (start == false) {
    background(0);
    rectMode(CENTER);
    fill(66, 158, 232);
    rect(rx, ry, rw, rh);
    textSize(40);
    textAlign(CENTER, CENTER);
    fill(0);
    text("BEGIN", width/2, height/2);
  }
  //The following else statement says that if boolean start is not false, the following will happen 
  //Timing for each raindrop fall time is set
  else {
    imageMode(CENTER);
    image(paris, displayWidth/2, displayHeight/2, displayWidth, displayHeight);
    fill(33, 224, 232);
    textAlign(LEFT);
    textSize(75);
    //Score will be kept by each raindrop caught
    text("Score: " + score, textx, texty);
    //If actual time is greater than or equal to ___, then actual time will equal old time and be reset to zero
    if (millis() - oldTime >= 2000) {
      oldTime = millis();
      //Index will increase, meaning another raindrop will fall
      index++;
    }
    //Catcher will be displayed
    c.display();
  }
  //The following for statement will run the functions to display, drop, speed up the raindrops, and check to see if raindrops touched Catcher c
  for (int i = 0; i < index; i++) {
    drops[i].display();
    drops[i].drop();
    drops[i].speed();
    drops[i].checkCatcher(c);
  }
  //The following for statement will run the functions to display the umbrella lives
  for (int u = 0; u < index; u++) {
      umbrella[u].display();
    }
  //The following if statement says if there are zero lives left, the following will happen
  if (lives == 0) {
    //Framerate set to 40 for ellipses to display more easily
    frameRate(40);
    colorMode(HSB, displayWidth, 230, 100);
    background(0);
    //The following for statement says how the ellipse colors are filled
    for (int x = 0; x < width; x += d) {
      fill(dist(random(0, width), 0, x, 0), 100, 100);
      ellipse(random(0, width), random(0, height), d, d);
    }
    //The following code serves as the end screen, featuring a "START OVER" button to start a new game
    textAlign(CENTER);
    textSize(150);
    text("GAME OVER", width/2, height/2 - 100);
    start = false;
    rectMode(CENTER);
    fill(66, 158, 232);
    rect(rx, ry, rw, rh);
    textSize(40);
    textAlign(CENTER, CENTER);
    fill(0);
    text("START OVER", width/2, height/2);
  }
}

//The following function says if the mouse is clicked within the box, boolean start is set to the opposite
//Score is reset to zero and lives are reset to 3
void mousePressed() {
  if (mouseX > rx - rw && mouseX < rx + rw && mouseY > rh && mouseY < ry + rh) {
    start = !start;
    score = 0;
    lives = 3;
  }
}

