
void setup(){
  size(848,480);
  background(0);
  
}

void draw(){
  //clock outline
  float radius = 120;
  stroke(200);
  beginShape();
  curveVertex(radius,0);
  curveVertex(848 - width, 0);
  curveVertex(width + radius, height / 2.0);
  endShape();
}
