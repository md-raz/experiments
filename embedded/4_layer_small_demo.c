/*
 *  4LayerDemoSmall.c
 *
 *  Created: 10/22/2020 2:40:04 PM
 *  Author : Md Raz
 *
 *  Very quick and dirty c application to run on an 8-bit AVR and cycle between
 *  turning on four LEDs on four different GPIOs using direct port manipultion.
 *
 */

#define F_CPU 8000000 UL#include <avr/io.h>

#include <util/delay.h>

int main(void) {

  DDRB = (1 << 3) | (1 << 4) | (1 << 2) | (1 << 1); // set Pins connected to LEDs as outputs
  PINB &= 0x00; // initialize outputs as all LOW

  while (1) {

    PORTB |= (1 << 3);
    _delay_ms(300);
    PORTB &= ~(1 << 3);
    PORTB |= (1 << 4);
    _delay_ms(300);
    PORTB &= ~(1 << 4);
    PORTB |= (1 << 1);
    _delay_ms(300);
    PORTB &= ~(1 << 1);
    PORTB |= (1 << 2);
    _delay_ms(300);
    PORTB &= ~(1 << 2);
  }
}
