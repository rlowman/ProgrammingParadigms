# Makefile for GNAT (Ada) compilation
#  for a 3-level class hierarchy

TARGET = birdtest
WALKINGSUBPACKAGES = ostrich_package.ali kiwi_package.ali penguin_package.ali
FLYINGSUBPACKAGES = duck_package.ali goose_package.ali owl_package.ali
MIDPACKAGES = walkingbird_package.ali flyingbird_package.ali
PACKAGES = bird_package.ali $(MIDPACKAGES) $(WALKINGSUBPACKAGES) $(FLYINGSUBPACKAGES)

BIN = /usr/bin/
CC = $(BIN)gcc
CFLAGS = -c

.SUFFIXES:
.SUFFIXES: .adb .ads                  # ada package body & spec.

$(TARGET): $(TARGET).ali $(PACKAGES)  # link target & packages
	$(BIN)gnatbind $(TARGET).ali
	$(BIN)gnatlink $(TARGET).ali

$(TARGET).ali: $(TARGET).adb          # compile target (w/o .ads)
	$(CC) $(CFLAGS) $<

%.ali : %.adb %.ads                   # compile packages (w .ads)
	$(CC) $(CFLAGS) $<

$(MIDPACKAGES) : bird_package.ads     # subclasses depend on superclass
$(WALKINGSUBPACKAGES) : walkingbird_package.ads
$(FLYINGSUBPACKAGES) : flyingbird_package.ads

clean:
	/bin/rm -f $(TARGET) *~ *# *.o *.ali *.c
