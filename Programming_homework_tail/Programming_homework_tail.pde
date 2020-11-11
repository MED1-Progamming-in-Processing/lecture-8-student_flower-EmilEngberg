Shape circle;
Shape circle2;
Shape[] tail = new Shape[50];

void setup() {
  size(800, 800);
  circle = new Shape (false);
  circle2 = new Shape (true);
  
  for(int i = 0; i < tail.length ; i++){
    tail[i] = new Shape (false);
    
  tail[i].circleX = mouseX;
  tail[i].circleY = mouseY;
  }
}

void draw() {
  background(200);
  
  boolean overlapping = circle.overlap();
  
  if(overlapping == true){
    background(#FF0000);
  }
 
  circle.move();
  circle.display();
 
  circle2.display();
  circle2.follow();
  
 for (int i = tail.length-1; i > 0; i--){
  tail[i].display();
  tail[i].shrink();
  
  tail[i] = tail[i-1];
 }
 
  Shape newShape = new Shape (true);
  tail[0] = newShape;
  
  tail[0].circleX = mouseX;
  tail[0].circleY = mouseY;
  
  tail[0].display();
  tail[0].shrink();
  
  
  
 }
 
