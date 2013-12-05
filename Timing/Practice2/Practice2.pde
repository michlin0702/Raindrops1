//Write code to make a circle appear in a random location every 3 seconds

int d = 75;

void setup() {
  background(0);
  size(displayWidth, displayHeight);
  noStroke();
}

void draw() {
  frameRate(5);
  if (frameCount%3 == 0) {
    ellipse(random(0, displayWidth), random(0, displayHeight), d, d);
  }
}

