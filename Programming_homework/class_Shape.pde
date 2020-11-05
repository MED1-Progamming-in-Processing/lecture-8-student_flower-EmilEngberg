
class Shape {
  float circleX = random(width);
  float circleY = random(height);
  float circleXSpeed = random(-10, 10);
  float circleYSpeed = random(-10, 10);
  float circleRadius = random(30,80);
  float circleColor1 = random(0,250);
  float circleColor2 = random(0,250);
  float circleColor3 = random(0,250);
  
  float randomNumber;
  
  boolean cursor;
  
  Shape (boolean a){
   randomNumber = random(0,2);
   cursor = a;
 }

  void move() {
    
    if (cursor == true) {
     circleX = mouseX;
     circleY = mouseY;
    }
    else {
    circleX += circleXSpeed;
    if (circleX <= 0 || circleX >= width) {
      circleXSpeed = circleXSpeed*(-1);
    }

    circleY += circleYSpeed;
    if (circleY <= 0 || circleY >= height) {
      circleYSpeed = circleYSpeed*(-1);
    }
    }
  }

  void display() {
 fill(circleColor1,circleColor2,circleColor3);
    if(randomNumber < 1){
  ellipse(circleX, circleY, circleRadius, circleRadius);
    }
    
    else{
  rect(circleX, circleY, circleRadius, circleRadius);
    }
}

  

}
