Rain[] r = new Rain[100];
Catcher c1;

void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i < r.length; i++) {
      r[i] = new Rain();
  }
  c1 = new Catcher();
}

void draw() {
  background(136, 205, 250);
  for (int i = 0; i < r.length; i++) {
    r[i].display();
    r[i].drop();
  }
  c1.display();
}

