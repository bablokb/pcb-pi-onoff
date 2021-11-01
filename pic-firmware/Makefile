# --------------------------------------------------------------------------
# Firmware for power-control pHat
#
# Author: Bernhard Bablok
#
# https://github.com/bablokb/pcb-pi-onoff
# 
# --------------------------------------------------------------------------

PIN_FROM_PI = 0
PIN_TO_PI   = 1
PIN_IR      = 2
PIN_SIG     = 4
PIN_POWER   = 5

PROJECT=pi-onoff
EXTRA_ASM=delay.asm
EXTRA_C=
ARCH=pic14
MODEL=12F1840

SDCC_ARGS=-DPIN_FROM_PI=$(PIN_FROM_PI) \
          -DPIN_TO_PI=$(PIN_TO_PI) \
          -DPIN_IR=$(PIN_IR) \
          -DPIN_SIG=$(PIN_SIG) \
          -DPIN_POWER=$(PIN_POWER)

include ptc_rules.inc
MCLR = OFF


# --------------------------------------------------------------------------
