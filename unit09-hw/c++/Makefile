CFLAGS = -c -Wall
LFLAGS = -o temperatureMain
temperatureMain: temperatureMain.o Temperature.o
	g++ temperatureMain.o Temperature.o $(LFLAGS)

temperatureMain.o: temperatureMain.cpp Temperature.h
	g++ $(CFLAGS) temperatureMain.cpp

Temperature.o: TempFunctions.cpp Temperature.h
	g++ $(CFLAGS) TempFunctions.cpp

clean:
	rm -f temperatureMain *~ *# *.o
