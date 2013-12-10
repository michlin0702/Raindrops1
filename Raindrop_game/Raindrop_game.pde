PImage raindrop;
int score = 0;
int tx = 0;
int ty = 100;
int index = 1; 
int oldTime = 0;
int currentTime = 0;
int timeChange = 0;

Rain[] drops = new Rain[100];
Catcher c;

void setup() {
  size(displayWidth, displayHeight);
  raindrop = loadImage("Raindrops.png");
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
  c = new Catcher();
}

void draw() {
  background(136, 205, 250);
  text(score, tx, ty);
  textSize(100);
  if (millis() - oldTime >= 1500) {
    oldTime = millis();
    index++;
  }
  for (int i = 0; i < index; i++) {
    drops[i].display();
    drops[i].drop();
    drops[i].checkCatcher(c);
  }
  c.display();
}

void mousePressed() {
  if (index < drops.length) {
    index++;
  }
}

