color c = color(0, 0, 255);

void setup() {
  size(displayWidth, displayHeight);
  textSize(100);
  textAlign(CENTER);
}

void draw() {
  background(c);
  if (frameCount%200 == 0) {
    c = color(random(255), random(255), random(255));
  }
  text(frameCount, displayWidth/2, displayHeight/2);
}

