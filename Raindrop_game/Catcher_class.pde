//Create a new class called Catcher, which will control the game's rain catcher
class Catcher {
//Declare all variables and images
  PImage bucket;
  PVector loc;

//Create catcher constructor, which includes catcher details
  Catcher() {
    bucket = loadImage("Bucket.png");
    loc = new PVector();
  }

//The following function will display the catcher
  void display() {
    image(bucket, loc.x, loc.y, bucket.width*.5, bucket.height*.5);
    imageMode(CENTER);
    loc = new PVector (mouseX, height - bucket.height/2);    
  }
}
