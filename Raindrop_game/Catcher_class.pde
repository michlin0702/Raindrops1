class Catcher {
  PVector loc;
  int d;

  Catcher() {
    d = 100;
  }

  void display() {
    fill(5, 59, 173);
    loc = new PVector (mouseX, height - d);
    ellipse(loc.x, loc.y, d, d);
  }
}
