//Declare variables and images
PImage raindrop;
int score = 0;
int tx = 0;
int ty = 100;
int index = 1; 
int oldTime = 0;

//Create a new array called Rain
Rain[] drops = new Rain[100];
Catcher c;

//Set up size
//The following for loop creates a new raindrop
void setup() {
  size(displayWidth, displayHeight);
  raindrop = loadImage("Raindrops.png");
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
  c = new Catcher();
}

//In void draw, background color is set.  
//The score text that will appear is created.  
//Timing for each raindrop fall time is set. 
//If actual time is greater than or equal to ___, then actual time will equal old time and be reset to zero.
//Index will increase, meaning another raindrop will fall.
void draw() {
  background(136, 205, 250);
  text(score, tx, ty);
  textSize(100);
  if (millis() - oldTime >= 1500) {
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

//The following function will create more raindrops for more challenge
void keyPressed() {
  if (index < drops.length) {
    index++;
  }
}

