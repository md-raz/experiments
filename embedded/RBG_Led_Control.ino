/*  Author: Md Raz
 *  This code controls controls an RGB Led
 *  with the common cathode connected to ground. 
 *  See the pin assignments. 
 *  we will use an enum to generate an int that 
 *  will be used to later determine the color.
 */

#define led_R 9
#define led_G 8
#define led_B 7

enum LedColor {off, red, green, orange, blue, purple, teal, white}; 

void setup() {
}

void loop() {
  // put your main code here, to run repeatedly:
  set_led(red);     delay(500);
  set_led(green);   delay(500);
  set_led(blue);    delay(500);
  set_led(orange);  delay(500);
  set_led(teal);    delay(500);
  set_led(purple);  delay(500);
  set_led(white);   delay(500);
  set_led(off);     delay(500);
}

void set_led(uint8_t color){
  /* Off `  0x00000000
   * Red    0x00000001
   * Green  0x00000010
   * Orange 0x00000011
   * Blue   0x00000100
   * Purple 0x00000101
   * Teal   0x00000110
   * White  0x00000111   */

  digitalWrite(led_R, (1 & (color >> 0)));
  digitalWrite(led_G, (1 & (color >> 1)));
  digitalWrite(led_B, (1 & (color >> 2)));
}
