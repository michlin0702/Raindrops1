//Create a new class called Rain
class Rain {
  //Declare all variables and images
  PImage raindrop;
  PVector loc;
  PVector vel;
  PVector acc;
  int d = 20;

  //Create constructor for rain, which includes rain details
  Rain() {
    loc = new PVector(random(-100, width + 100), 0);
    vel = new PVector (0, 2);
    acc = new PVector (0, 1);
    raindrop = loadImage("Raindrops.png");
  }

  //The following function will display the raindrops
  void display() {
    image(raindrop, loc.x, loc.y, raindrop.width*.5, raindrop.height*.5);
    imageMode(CENTER);
  }

  //The following function will add velocity vector to location vector to move drop raindrops
  void drop() {
    loc.add(vel);
  }

  //The following function will add acceleration vector to velocity vector to give range of speeds to raindrops
  void speed() {
    vel.add(acc);
  }

  //The following function will check to see if raindrops are touching catcher.
  //If so, raindrop location, velocity, and acceleration will reset to zero.  
  //Raindrop will then disappear.
  void checkCatcher(Catcher c) {
    if (loc.dist(c.loc) <= d/2 + c.d/2) {
      loc.set(-100, -100);
      vel.set(0, 0);
      acc.set(0, 0);
      score++;
    }
    if (loc.y > height) {
      end = true; 
      loc.set(-100, -100);
      vel.set(0, 0);
      acc.set(0, 0);
    }
  }
}

