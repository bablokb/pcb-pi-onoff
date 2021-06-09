pcb-pi-onoff
============

**Status: this is work-in-progress! The pcb is currently in production, the
verification of the design will follow once the pcbs arrive.**

This project contains the KiCAD-project-files for a small
power-control pHat. A PIC-MCU controls the power for the Pi. On/off is
via a push-button or an IR-remote. Before cutting current, the PIC
requests a shutdown from the Pi. Once done, the Pi signals
shutdown-complete to the PIC which in turn cuts power.

The KiCAD-sources are in the sub-directory [pcb-pi-onoff](pcb-pi-onoff), production-files with
gerber-layers, drill-hole files, bom and pick-and-place-file are in
the sub-directory [production](production). Note that the pcb and the
bom/cpl-files are optimzied for JLCPCB. Please check with your
pcb-factory if these files meet their requirements.


Schematic
---------

![](pcb-pi-onoff-schematic.png)


Layout
------

![](pcb-pi-onoff-layout.png)


3D-View
-------

![](pcb-pi-onoff-3D.png)


Configuration (Pi)
------------------

TBD


Firmware
--------

TBD
