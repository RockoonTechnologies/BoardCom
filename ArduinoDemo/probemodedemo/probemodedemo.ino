String incomingByte = ""; // for incoming serial data

void setup() {
  Serial.begin(9600); // opens serial port, sets data rate to 9600 bps
}

void loop() {
  delay(600);
  Serial.write("name");
  delay(600);
  Serial.write("Arrow");
  delay(600);
  Serial.write("version");
  delay(600);
  Serial.write(".1");
  delay(600);
  Serial.write("status");
  delay(600);
  Serial.write("idle");
  delay(600);
  Serial.write("alt");
  delay(600);
  Serial.write("200.3");
  delay(600);
  Serial.write("sensor");
  delay(600);
  Serial.write("All");
  
}
