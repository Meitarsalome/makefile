C=gcc
AR=ar
POWER_BASIC=power.o basicMath.o
MAIN=main.o
FLAGS= -Wall -g




all:  mymaths mymathd maind mains

maind:  $(MAIN)
	$(CC)  $(FLAGS) -o maind $(MAIN) $(POWER_BASIC) ./libmyMath.so

mains: libmyMath.a $(MAIN)
	$(CC) $(FLAGS) -o mains $(POWER_BASIC) libmyMath.a $(MAIN)

mymathd:libmyMath.so


libmyMath.so:$(POWER_BASIC)
	$(CC) -shared -o libmyMath.so $(POWER_BASIC)

mymaths: libmyMath.a

libmyMath.a:$(POWER_BASIC) 
	$(AR) -rcs libmyMath.a $(POWER_BASIC) 
basicMath.o: basicMath.c 
	$(CC)  $(FLAGS) -fPIC -c basicMath.c 
power.o: power.c myMath.h 
	$(CC)  $(FLAGS) -fPIC -c power.c   


main.o: main.c   
	$(CC)  $(FLAGS) -c -fPIC main.c




.PHONY: clean all

clean:
	rm -f mains maind *.o *.a *.so
