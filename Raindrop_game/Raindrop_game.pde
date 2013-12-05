int index = 1; 
int oldTime = 0;
int currentTime = 0;
int timeChange = 0;

Rain[] drops = new Rain[100];
Catcher c;

void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Rain();
  }
  c = new Catcher();
}

void draw() {
  background(136, 205, 250);
  if (millis() - oldTime >= 3000) {
    oldTime = millis();
    index++;
  }
  for (int i = 0; i < index; i++) {
    drops[i].display();
    drops[i].drop();
  }
  c.display();
}

void mousePressed() {
  if (index < drops.length) {
    index++;
  }
}

