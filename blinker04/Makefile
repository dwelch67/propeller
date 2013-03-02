UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
	BSTC := bstc.osx
else
	BSTC := bstc.linux
endif

blinker04.binary : blinker04.spin
	$(BSTC) -lb $^

clean :
	rm -f *.binary *.list
