CC = gcc
FF = f77
OEXT = .o
EEXT = 
RM = rm -f
TARGET1 = callc
LDFLAGS = 
LIBS = 
OBJ1 = callc$(OEXT) cforf$(OEXT)

all:	$(TARGET1)

callc$(OEXT): callc.f
	$(FF) -c callc.f
	
cforf$(OEXT): cforf.c
	$(CC) -c cforf.c

shello$(OEXT): shello.f
	$(FF) -c shello.f
	
visib$(OEXT): visib.c
	$(CC) -c visib.c

$(TARGET1): callc$(OEXT) cforf$(OEXT)
	$(FF) callc$(OEXT) cforf$(OEXT) -o $(TARGET1) $(LDFLAGS) $(LIBS)

	
visib: visib$(OEXT)
	$(CC)  visib$(OEXT) -o visib


shello: shello$(OEXT)
	$(FF) shello$(OEXT) -o shello

.PHONY: all clean

clean:
	$(RM) $(OBJ1) $(TARGET1) visib shello visib.o shello.o

