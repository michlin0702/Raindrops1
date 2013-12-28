//Create a new class called Catcher, which will control the game's rain catcher
class Catcher {
//Declare variables and images
  PImage boots;
  PVector loc;
  int d;

  //Create catcher constructor, which includes catcher details
  Catcher() {
    boots = loadImage("Rainboots.png");
    d = boots.width/2;
    loc = new PVector();
  }

//The following function will display the catcher
  void display() {
    image(boots, loc.x, loc.y, d, d);
    imageMode(CENTER);
    loc = new PVector (mouseX, height - d);    
  }
}
