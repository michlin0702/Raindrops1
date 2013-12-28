//Create a new class called Umbrella, which will control the game's umbrella lives
class Umbrella {
  //Declare variables and images
  PImage umbrella;
  PVector loc1;
  PVector loc2;
  PVector loc3;
  int x2 = 50;
  int x3 = 100;
  int y = 150;
//  float w = umbrella.width*.15;
//  float h = umbrella.height*.15;

  //Create constructor for umbrella, which includes umbrella details
  Umbrella() {
    loc1 = new PVector(0, y);
    loc2 = new PVector(x2, y);
    loc3 = new PVector(x3, y);
    umbrella = loadImage("RedUmbrella.png");
  }

  //The following function displays the umbrellas
  void display() {
    imageMode(CORNER);
    image(umbrella, loc1.x, loc1.y, umbrella.width*.15, umbrella.height*.15);
    image(umbrella, loc2.x, loc2.y, umbrella.width*.15, umbrella.height*.15);
    image(umbrella, loc3.x, loc3.y, umbrella.width*.15, umbrella.height*.15);
  }
  
  void disappear() {
    
  }
}

