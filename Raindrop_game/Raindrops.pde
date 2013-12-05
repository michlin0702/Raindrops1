class Rain {
  PVector loc;
  PVector vel;
  PVector acc;
  int d = 20;

  Rain() {
    loc = new PVector(random(-100, width + 100), random(0, 0));
    vel = new PVector (random(-5, 5), random(5, 5));
    acc = new PVector (random(-2, 1), random(-2, 1));
  }

  void display() {
    fill(255);
    ellipse(loc.x, loc.y, d, d);
  }

  void drop() {
    loc.add(vel);
  }

  void speed() {
    vel.add(acc);
  }

  void checkCatcher(Catcher c) {
    if (dist(loc.x, loc.y, c.loc.x, c.loc.y) > d + c.d) {
      loc.set(-100,-100);
      vel.set(0,0);
      acc.set(0,0);
    }
  }
}
