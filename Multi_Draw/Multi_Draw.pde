import codeanticode.tablet.*;

float yInt = 100;//y interval
float ny = 10;//number of clone

Tablet tablet;

void setup() {
  size(500, 500);
 
  tablet = new Tablet(this); 
  
  background(0);
  stroke(255);  
}

void draw() {
  if (mousePressed) {
    strokeWeight(30 * tablet.getPressure());//please replace tablet.getPressure() to constant(ex.100) when you use mouse
    for(int i=0; i<ny; i++){
      line(pmouseX, pmouseY+i*yInt, mouseX, mouseY+i*yInt);    
    } 
  }
}
