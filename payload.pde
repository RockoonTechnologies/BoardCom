
PFont mono;

import processing.serial.*;

Serial myPort;  // The serial port
String inByte = "";
String status = "connecting...";
String alt = "connecting...";
String sensor = "connecting...";
String Name = "connecting...";
String version = "connecting...";


void setup() {
  // List all the available serial ports
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[0], 9600);
  size(900, 600);
  stroke(0, 102, 153);
  mono = createFont("Roboto-Light.ttf", 32);
}

void draw() {
  textFont(mono);
  background(0);
  textSize(24);
  text("Payload Mode", 550, 450); 
  textSize(18);
  text("Rockoon Technologies", 600, 475); 
  textSize(32);
  text("Status: " + status, 10, 30); 
  line(10, 45, 400, 45);
  text("Altitude: " + alt + " meters", 10, 90);
  text("Sensor Status: " + sensor + " Reporting", 10, 120);
  line(10, 135, 500, 135);
  text("Computer Info: ", 10, 170);
  text("Name: " + Name + " Flight Computer", 10, 200);
  text("Version: " + version + "v", 10, 230);
  line(10, 245, 600, 245);
  textSize(14);
  text("Port: " + myPort, 10, 270);
  fill(255);
  while (myPort.available() > 0) {
       inByte = myPort.readString();
  //println(inByte);
  if (inByte.equals("status") == true) {
     println("finding status");
     delay(600);
     status = myPort.readString();
     println(status);
  }
  if (inByte.equals("alt") == true) {
     println("finding alt");
     delay(600);
     alt = myPort.readString();
     println(alt);
  }
   if (inByte.equals("sensor") == true) {
     println("Sensor Status");
     delay(600);
     sensor = myPort.readString();
     println(sensor);
  }
  if (inByte.equals("name") == true) {
     println("Board Name");
     delay(600);
     Name = myPort.readString();
     println(Name);
  }
  if (inByte.equals("version") == true) {
     println("Board Version");
     delay(600);
     version = myPort.readString();
     println(version);
  }
}
}
