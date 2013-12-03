class Rain {
  PVector loc;
  PVector vel;
  PVector acc;
  int d = 20;

  Rain() {
    loc = new PVector(random(-100, width + 100), random(-1000, 50));
    vel = new PVector (random(-5, 5), random(5, 5));
    acc = new PVector (random(-2, 1), random(-2, 1));
  }

  void display() {
    fill(255);
    ellipse(loc.x, loc.y, d, d);
  }

  void drop() {
    loc.add(vel);
    if (loc.x < 0) {
      loc.x = width/2;
    }
    if (loc.x > width) {
     loc.x = width/2; 
    }
    if (loc.y > height) {
      loc.y = 0;
    }
  }
  void speed() {
    vel.add(acc);
  }
}
