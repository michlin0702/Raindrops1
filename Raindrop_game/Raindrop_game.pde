//Declare variables and images
//Score is a global variable
PImage paris;
PImage umbrella;
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

//Create a new array called Rain
Rain[] drops = new Rain[100];
Umbrella[] umbrella = new Umbrella[3];
Catcher c;

//Set up size
//Load image
//The following for loop creates a new raindrop
void setup() {
  size(displayWidth, displayHeight);
  rx = width/2;
  ry = height/2;
  rw = 300;
  rh = 150;
  start = false;
  paris = loadImage("ParisRain.jpg");
  umbrella = loadImage("RedUmbrella.png");
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
  for (int u = 0, u < umbrella.length; u++) {
    umbrella[i] = new Umbrella();
  }
  c = new Catcher();
}

//In void draw, background is set to image.  
//The score text that will appear is created.  
//Timing for each raindrop fall time is set. 
//If actual time is greater than or equal to ___, then actual time will equal old time and be reset to zero.
//Index will increase, meaning another raindrop will fall.
void draw() {
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
  else {
    image(paris, displayWidth/2, displayHeight/2, displayWidth, displayHeight);
    for (int u = 0; u < index; u++) {
     umbrella[u].display(); 
    }
    fill(33, 224, 232);
    textAlign(LEFT);
    textSize(75);
    text("Score: " + score, textx, texty);
    if (millis() - oldTime >= 2000) {
      oldTime = millis();
      index++;
    }
    //Catcher will be displayed
    c.display();
  }
  //The following for loop will run the functions to display, drop, and speed up the raindrops
  for (int i = 0; i < index; i++) {
    drops[i].display();
    drops[i].drop();
    drops[i].speed();
    drops[i].checkCatcher(c);
  }

  if (lives == 0) {
    frameRate(40);
    colorMode(HSB, displayWidth, 230, 100);
    background(0);
    for (int x = 0; x < width; x += d) {
      fill(dist(random(0, width), 0, x, 0), 100, 100);
      ellipse(random(0, width), random(0, height), d, d);
    }
    textAlign(CENTER);
    textSize(150);
    text("GAME OVER", width/2, height/2);
    start = false;
  }
}

void mousePressed() {
  if (mouseX > rx - rw && mouseX < rx + rw && mouseY > rh && mouseY < ry + rh) {
    start = !start;
  }
}

