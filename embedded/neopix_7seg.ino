#include <Adafruit_NeoPixel.h>
#define PIN 43
#define NUMPIXELS 1
//pin defs for 7 segment display
#define G 50 
#define F 51
#define A 53
#define B 52
#define E 49
#define D 48
#define C 47
#define P 46

// Neopixel init
Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

void setup() {
  pixels.begin();
  pinMode(G, OUTPUT);
  pinMode(F, OUTPUT);
  pinMode(A, OUTPUT);
  pinMode(B, OUTPUT);
  pinMode(E, OUTPUT);
  pinMode(D, OUTPUT);
  pinMode(C, OUTPUT);
  pinMode(P, OUTPUT);
}

void loop() {
  
  uint32_t sensorValue = analogRead(A0);
  uint8_t brightness = sensorValue / 4;
  pixels.setPixelColor(0, pixels.Color(brightness, brightness, brightness));
  pixels.show();
  
  for (uint32_t i = 1; i <= 100000; i++){
    if (i == 1){
      show_segment(brightness/26);
    }
  }
}

void show_segment(uint8_t num) {
  uint8_t arr_0[8] = {0,1,1,1,1,1,1,0};
  uint8_t arr_1[8] = {0,0,0,1,0,0,1,0};
  uint8_t arr_2[8] = {1,0,1,1,1,1,0,0}; 
  uint8_t arr_3[8] = {1,0,1,1,0,1,1,0};  
  uint8_t arr_4[8] = {1,1,0,1,0,0,1,0}; 
  uint8_t arr_5[8] = {1,1,1,0,0,1,1,0};
  uint8_t arr_6[8] = {1,1,1,0,1,1,1,0}; 
  uint8_t arr_7[8] = {0,0,1,1,0,0,1,0};
  uint8_t arr_8[8] = {1,1,1,1,1,1,1,0}; 
  uint8_t arr_9[8] = {1,1,1,1,0,0,1,0};
  uint8_t arr_empt[8] = {0,0,0,0,0,0,0,1};
   
  uint8_t segPins[8] = {50, 51, 53, 52, 49, 48, 47, 46}; 
  uint8_t* arr;
  
  switch(num) {
   case 0 :  arr = arr_0; break; 
   case 1 :  arr = arr_1; break;
   case 2 :  arr = arr_2; break;
   case 3 :  arr = arr_3; break; 
   case 4 :  arr = arr_4; break;  
   case 5 :  arr = arr_5; break;
   case 6 :  arr = arr_6; break;
   case 7 :  arr = arr_7; break;
   case 8 :  arr = arr_8; break; 
   case 9 :  arr = arr_9; break; 
   default :  arr = arr_empt;
   }
  for(uint8_t i = 0; i <=7; i++){
    if (arr[i] == 1){
      digitalWrite(segPins[i], HIGH);
      }
    else
      digitalWrite(segPins[i], LOW);
  }
  
}

