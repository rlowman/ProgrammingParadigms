# Makefile for combining flex, bison, and gcc.
#
# Dr Jump for CS 315 Lab 02 at King's College.
#
# Just change the value assigned to BIN to the name
#  of your lex and bison specification files.

BIN = example6

$(BIN): $(BIN).lex $(BIN).y
	flex $(BIN).lex
	bison -d $(BIN).y
	gcc lex.yy.c $(BIN).tab.c -o $(BIN) -lfl

clean:
	rm -f lex.yy.c $(BIN).tab.h $(BIN).tab.c $(BIN)
