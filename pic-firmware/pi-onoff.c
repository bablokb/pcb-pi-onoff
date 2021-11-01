// --------------------------------------------------------------------------
// Firmware for power-control pHat
//
// This project uses the following pins:
//  - PIN_FROM_PI (RA0): Pi confirms shutdown (PIC can turn off power)
//  - PIN_TO_PI   (RA1): request shutdown from Pi
//  - PIN_IR      (RA2): infrared signal (not implemented)
//  - PIN_SIG     (RA4): external on/off signal (RTC and button)
//  - PIN_POWER   (RA5): attach to gate of mosfet to turn power on or off
//
// Author: Bernhard Bablok
//
// https://github.com/bablokb/pcb-pi-onoff
// 
// --------------------------------------------------------------------------

#include "picconfig.h"
#include <stdint.h>

#include "delay.h"

#ifndef PIN_FROM_PI
  #define PIN_FROM_PI 0
#endif
#define GP_FROM_PI _CONCAT(RA,PIN_FROM_PI)

#ifndef PIN_TO_PI
  #define PIN_TO_PI 1
#endif
#define GP_TO_PI _CONCAT(RA,PIN_TO_PI)

#ifndef PIN_IR
  #define PIN_IR 2
#endif
#define GP_IR _CONCAT(RA,PIN_IR)

#ifndef PIN_SIG
  #define PIN_SIG 4
#endif
#define GP_SIG _CONCAT(RA,PIN_SIG)

#ifndef PIN_POWER
  #define PIN_POWER 5
#endif
#define GP_POWER _CONCAT(RA,PIN_POWER)

#define BOOT_WAIT   20               // 5s = 20*250ms
#define POWER_ON    0
#define POWER_OFF   1

CONFIG_WORDS;

static uint8_t is_booting = 0;

////////////////////////////////////////////////////////////////////////
// Intialize registers

static void init(void) {
  // configure registers
  __asm__ ("CLRWDT");             // clear WDT even if WDT is disabled
  TRISA     = 0b010101;           // GP4, GP2, GP0 are input
  ANSELA    = 0;                  // no analog input
  CM1CON0   = 0x07;               // disable comparator for GP0-GP2
  WPUA      = 0b010100;           // weak pullups enable on GP2, GP4
  NOT_GPPU  = 0;                  // enable pullups
  IOCAN     = 0b010101;           // IOC for all input pins

  PORTA    = 0;                   // initial value of GPIOs
  GP_POWER = POWER_OFF;           //    except GP_POWER
  GP_TO_PI = 1;                   //    except GP_TO_PI

  INTCON   = 0;                   // clear interrupt flag bits
  IOCIE    = 1;                   // enable IOC
  GIE      = 1;                   // global interrupt enable
}

// --- interrupt service routine   ------------------------------------------

static void isr(void) __interrupt 0 {
  if (IOCIF) {                           // interrupt-on-change
    if (!GP_SIG) {                       // PIN_SIG low
      if (GP_POWER == POWER_OFF) {       // power is off:
        GP_POWER = POWER_ON;             //   turn power on and
        is_booting = 1;                  //   configure wait
      } else {                           // power is on:
        GP_TO_PI = 0;                    //   signal shutdown to Pi
      }
      delay_ms(50);                      // debounce GP_SIG

    } else if (GP_FROM_PI) {             // High: shutdown complete
      GP_POWER = POWER_OFF;              // turn power off
      GP_TO_PI = 1;                      // and restore initial state
      is_booting = 0;                    // (should not be necessary)
    }
    IOCIF = 0;                           // clear IOC interrupt flag
  }
}

// --- main program   -------------------------------------------------------

// - calibrate internal clock
// - initialize registers
// - loop forever (sleep not possible because IOC can't wake device)

void main(void) {
  INIT_SPECIAL;
  init();
  while (1) {
    if (is_booting) {
      GIE = 0;                               // disable interrupts
      for (uint8_t i=0; i<BOOT_WAIT; ++i) {
        delay_ms(250);
      }
      is_booting = 0;
      GIE = 1;                               // global interrupt enable
    }
  }
}
