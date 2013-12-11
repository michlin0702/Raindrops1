//Declare variables and images
//Score is a global variable
PImage paris;
int tx = 0;
int ty = 100;
int index = 1; 
int oldTime = 0;
int score = 0;

//Create a new array called Rain
Rain[] drops = new Rain[100];
Catcher c;

//Set up size
//Load image
//The following for loop creates a new raindrop
void setup() {
  size(displayWidth, displayHeight);
  paris = loadImage("ParisRain.jpg");
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
  c = new Catcher();
}

//In void draw, background is set to image.  
//The score text that will appear is created.  
//Timing for each raindrop fall time is set. 
//If actual time is greater than or equal to ___, then actual time will equal old time and be reset to zero.
//Index will increase, meaning another raindrop will fall.
void draw() {
  image(paris, displayWidth/2, displayHeight/2, displayWidth, displayHeight);
  text("Score: " + score, tx, ty);
  textSize(75);
  if (millis() - oldTime >= 2000) {
    oldTime = millis();
    index++;
  }
//The following for loop will run the functions
  for (int i = 0; i < index; i++) {
    drops[i].display();
    drops[i].drop();
    drops[i].checkCatcher(c);
  }
//Catcher will be displayed
  c.display();
}


