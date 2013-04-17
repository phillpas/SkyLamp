PImage clockbg;
float angle_minute;
float angle_hour;
float len_minute = 210;
float len_hour = 120;

void setup(){
  size(848,480);
  smooth();
  background(255);
  clockbg = loadImage("clockbg.png");
}

void draw(){
  background(255);
  image(clockbg,0,0);  
  drawClock();
}

void drawClock(){
  angle_minute = map(minute()+second()/60.0,0,60,0,TWO_PI);
  angle_hour = map(hour()+minute()/60.0,0,24,0,TWO_PI*2);
  pushMatrix();
    translate(width/2,height/2);
    fill(200);
    pushMatrix();
      rotate(angle_minute);
      triangle(-5,10,0,-len_minute,5,10);
    popMatrix();
    pushMatrix();
      rotate(angle_hour);
      triangle(-5,10,0,-len_hour,5,10);
    popMatrix();
  popMatrix();
}
