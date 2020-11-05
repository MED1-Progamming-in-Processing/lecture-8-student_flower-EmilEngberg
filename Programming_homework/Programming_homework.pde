Shape circle;
Shape circle2;
Shape circle3;
Shape circle4;
Shape circle5;
Shape circle6;
Shape circle7;
Shape circle8;

void setup() {
  size(500, 500);
  circle = new Shape (true);
  circle2 = new Shape (false);
  circle3 = new Shape (false);
  circle4 = new Shape (false);
  circle5 = new Shape (false);
  circle6 = new Shape (false);
  circle7 = new Shape (false);
  circle8 = new Shape (false);
}

void draw() {
  background(200);

  circle.move();
  circle.display();
  
  circle2.move();
  circle2.display();
  
  circle3.move();
  circle3.display();
  
  circle4.move();
  circle4.display();
  
  circle5.move();
  circle5.display();
  
  circle6.move();
  circle6.display();
  
  circle7.move();
  circle7.display();
  
  circle8.move();
  circle8.display();
 }
 
 void mouseClicked(){
   
   circle.cursor = !circle.cursor;
   
   circle.circleXSpeed = random(-10, 10);
   circle.circleYSpeed = random(-10, 10);
 }
