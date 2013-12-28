//Create a new class called Rain, which will control the game's raindrops
class Rain {
  //Declare variables and images
  PImage raindrop;
  PVector loc;
  PVector vel;
  PVector acc;
  int d = 20;

  //Create constructor for rain, which includes raindrop details
  Rain() {
    loc = new PVector(random(d, width - d), 0);
    vel = new PVector (0, 2);
    acc = new PVector (0, 1);
    raindrop = loadImage("Raindrops.png");
  }

  //The following function will display the raindrops
  void display() {
    image(raindrop, loc.x, loc.y, raindrop.width*.5, raindrop.height*.5);
    imageMode(CENTER);
  }

  //The following function will add velocity vector to location vector to drop raindrops
  void drop() {
    loc.add(vel);
  }

  //The following function will add acceleration vector to velocity vector to give range of speeds to raindrops
  void speed() {
    vel.add(acc);
  }

  //The following function will check to see if raindrops are touching catcher
  //If so, raindrop velocity and acceleration will reset to zero
  //If so, raindrop location will reset to zero, and raindrop will disappear
  //If so, score increases
  void checkCatcher(Catcher c) {
    if (loc.dist(c.loc) <= d/2 + c.d/2) {
      loc.set(-100, -100);
      vel.set(0, 0);
      acc.set(0, 0);
      score++;
    }
    //The following if statement says if the y location of the raindrop is greater than the height, 
    //meaning it has "fallen off" the screen, lives will be taken away from the player 
    if (loc.y > height) { 
      loc.set(-100, -100);
      vel.set(0, 0);
      acc.set(0, 0);
      lives--;
    }
  }
}

