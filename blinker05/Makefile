UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
	BSTC := bstc.osx
else
	BSTC := bstc.linux
endif

blinker05.binary : blinker05.spin
	$(BSTC) -lb $^

clean :
	rm -f *.binary *.list
