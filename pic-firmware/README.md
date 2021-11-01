Firmware
========


About
-----

This is a simple "firmware" for the power-control pHat.

  - The power of the Raspberry Pi is controlled by a PIC using a mosfet.
  - On a signal (high->low), the PIC sets the gate of the mosfet
    to low, thus turning on the Pi. Afterward the PIC waits for
    five seconds. This gives the Pi time to setup it's GPIOs correctly.
  - On an external signal (high->low), the PIC requests the Pi to shutdown by
    setting an output pin to low. This output pin is connected to and
    monitored by the Pi (see below).
  - The Pi now shuts down and at the end sets another pin to high
    This pin in turn is connected to and monitored by the PIC. The PIC
    sets the gate to high thus turning power off.

For the details of the connections, see the
[schematic](../pcb-pi-onoff-schematic.png).

The external signal is connected to a push-button and (optional) to
a RTC.


PIC Configuration
-----------------

  - RA/GP0: PIN_FROM_PI (low->high, connected to GPIO04 on the Pi-side (physical
    pin 7). This is the same pin as in the gpio-poweroff overlay.
  - RA/GP1: PIN_TO_PI (high->low, shutdown-request, monitored by the Pi).
    Connected to GPIO17 on the Pi-side. This is the same pin as in the 
    gpio-shutdown overlay.
  - RA/GP2: PIN_IR (not implemented yet)
  - RA/GP3: only connected to the ICSP-interface
  - RA/GP4: PIN_SIG (high->low, button, RTC)
  - RA/GP5: PIN_POWER (connected to the gate of the mosfet)

In this scenario, the PIC should run at 5V to provide enough voltage to
the gate of the mosfet. So PIN_TO_PI needs a voltage divider when
connected to the Pi (part of the pcb).


Pi Configuration
----------------

On the Pi-side you have to add the following lines in your
/boot/config.xt:

    # initiate shutdown on high->low
    dtoverlay=gpio-shutdown,gpio_pin=17,gpio_pull=off
    # signal shutdown complete on low->high
    dtoverlay=gpio-poweroff,gpiopin=4

Be careful, one overlay needs *gpio_pin*, the other *gpiopin*!


Building
--------

You need sdcc, gpasm and pk2cmd to build and flash the firmware. Please
adapt the paths within the file `rules.inc` to suit your setup.
