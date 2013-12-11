class Catcher {
  PImage bucket;
  PVector loc;

  Catcher() {
    bucket = loadImage("Bucket.png");
    loc = new PVector();
  }

  void display() {
    image(bucket, loc.x, loc.y, bucket.width*.5, bucket.height*.5);
    imageMode(CENTER);
    loc = new PVector (mouseX, height - bucket.height/2);    
  }
}
