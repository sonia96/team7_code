import controlP5.*;
import processing.serial.*;

ControlP5 cp5;

Serial myPort;
IntList temp;
IntList ph;
IntList stirSpeed;

void setup(){
  temp = new IntList();
  ph = new IntList();
  stirSpeed = new IntList();
  size(1280,680);
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
}

void draw(){
  background(255);
  adjustment();
  title();
  dataDisplay();
  log();
}  

void title(){
  stroke(160);
  rect(-10,0,1300,110,0,0,18,18);
  fill(30);
  textSize(20);
  text("Temperature (°C):",50,240);
  text("pH Value:",50,390);
  text("Stirring Speed (rpm):", 50,540);
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
  getValues();
  stroke(150);
  fill(153);
  rect(50,250,250,50,10,10,10,10);
  rect(50,400,250,50,10,10,10,10);
  rect(50,550,250,50,10,10,10,10);
  fill(30);
  textSize(30);
  text(temp.get(temp.size()-1), 150, 290);
  text(ph.get(ph.size()-1), 150, 440);
  text(stirSpeed.get(stirSpeed.size()-1), 150, 590);
  line(340,111,340,700);
  delay(1000);
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

void log(){
  fill(0);
  rect(900,130,360,529);
}

void getValues(){
  String val = "";
  for (int i = 0; i < 3; i++){
    val += int(random(50));
    if ( i != 2)
      val += ',';
    else
      val += '\n';
  }
  String[] val1 = split(val, ',');
  int[] val2 = int(trim(val1));
  temp.append(val2[0]);
  ph.append(val2[1]);
  stirSpeed.append(val2[2]);
}