import controlP5.*;

ControlP5 cp5;

String num1,num2;

void setup(){
  size(1280,680);
  cp5 = new ControlP5(this);
  cp5.addTextfield("1").setPosition(450, 255).setSize(68, 40).setFont(createFont("arial",26)).setColor(0)
  .setAutoClear(false).setColorBackground(0XFFFFFFFF).setColorForeground(0XFFFFFFFF).setColorActive(0XFFFFFFFF);
  
  cp5.addTextfield("2").setPosition(670, 255).setSize(68, 40).setFont(createFont("arial",26)).setColor(0)
  .setAutoClear(false).setColorBackground(0XFFFFFFFF).setColorForeground(0XFFFFFFFF).setColorActive(0XFFFFFFFF);
  
  cp5.addButton("Change").setPosition(540, 330).setSize(100, 35).setFont(createFont("arial",17)).setColorLabel(0)
  .setColorBackground(0XFFABB2B9).setColorForeground(0XFF5499C7);
  
  cp5.addButton("Default").setPosition(420,330).setSize(100,35).setFont(createFont("arial",17)).setColorLabel(0)
  .setColorBackground(0XFFABB2B9).setColorForeground(0XFF5499C7);
}

void Change() {
  num1= cp5.get(Textfield.class,"1").getText();
  num2= cp5.get(Textfield.class,"2").getText();
  print(num1);
  println();
  print(num2);
  println();
}

void Default(){
  print("25");
  println();
  print("35");
  println();
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
  textSize(64);
  text("Bioreactor UI",430,80);
  textSize(35);
  text("Status:",20,200);
  textSize(35);
  text("Temperature Adjustment:",360,200);
  textSize(60);
  text("~",580,290);
  textSize(32);
  text("°C",530,285);
  text("°C",750,285);
  textSize(15);
  text("* 25°C to 35°C",420,390);
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
  rect(640,250,100,50,10,10,10,10);
  stroke(100);
  fill(220);
}

void log(){
  fill(0);
  rect(900,130,360,529);
}