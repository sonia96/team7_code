#include <math.h>

//there may be some bugs as I haven't tested it yet with actual circuitry
//the pin numbers and variables will most probably be changed depending on what Anna wants to do with the circuit
const int thermistorInputPin = 5;
const int heaterOutputPin = 6; 
float temperature;
int T_LB, T_UB;
float getTemperature(int pinNumber);

void setup()
{
  Serial.begin(9600); 
  
  pinMode(heaterOutputPin, OUTPUT);
}

void loop()
{
  //Temperature code:
  temperature = getTemperature(thermistorInputPin);
  if(temperature <= T_LB+2)
  {
    digitalWrite(heaterOutputPin, HIGH); //turn heater on
  }
  else if(temperature >= T_UB-3)
  {
    digitalWrite(heaterOutputPin, LOW); //turn heater off
  }
  delay(50);
}

//Taken from my C Arduino coursework (Mohammed Chouman)
//Use the Steinhart-Hart equation to convert to degrees C
float getTemperature(int pinNumber) 
{
 int rawADC = analogRead(pinNumber);
 rawADC -= 200; 
 float temp;
 temp = logf(((10240000/rawADC) - 10000));
 temp = 1 / (0.001129148 +
 (0.000234125 + (0.0000000876741 * temp * temp ))* temp );
 return temp - 273.15; // Convert Kelvin to Celsius
}
