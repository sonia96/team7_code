import controlP5.*;

ControlP5 cp5;

void setup(){
  size(1280,680);
}

void draw(){
  background(255);
  adjustment();
  title();
  dataDisplay();
}  

void title(){
  stroke(160);
  rect(-10,0,1300,110,0,0,18,18);
  fill(30);
  textSize(64);
  text("Bioreactor UI",430,80);
  textSize(35);
  text("Status:",20,200);
  textSize(35);
  text("Temperature Adjustment:",360,200);
  textSize(60);
  text("~",550,290);
  textSize(18);
  text("Default",440,351);
  text("Change",558,351);
  fill(220);
  line(-10,111,1300,111);
}

void dataDisplay(){
  stroke(150);
  rect(50,250,250,50,10,10,10,10);
  rect(50,350,250,50,10,10,10,10);
  rect(50,450,250,50,10,10,10,10);
  line(340,111,340,700);
}

void adjustment(){
  stroke(0);
  fill(255);
  rect(420,250,100,50,10,10,10,10);
  rect(620,250,100,50,10,10,10,10);
  stroke(100);
  fill(200);
  rect(420,330,100,30,10,10,10,10);
  rect(540,330,100,30,10,10,10,10);
}