class Rain {
  PImage raindrop;
  PVector loc;
  PVector vel;
  PVector acc;
  int d = 20;

  Rain() {
    loc = new PVector(random(-100, width + 100), 0);
    vel = new PVector (0, random(5, 7));
    acc = new PVector (random(-2, 1), random(-2, 1));
    raindrop = loadImage("Raindrops.png");
  }

  void display() {
    image(raindrop, loc.x, loc.y, raindrop.width*.5, raindrop.height*.5);
    imageMode(CENTER);
}

  void drop() {
    loc.add(vel);
  }

  void speed() {
    vel.add(acc);
  }

  void checkCatcher(Catcher c) {
    if (loc.dist(c.loc) <= d/2 + c.d/2) {
      loc.set(-100,-100);
      vel.set(0,0);
      acc.set(0,0);
    }
  }
}
