UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
	BSTC := bstc.osx
else
	BSTC := bstc.linux
endif

blinker02.binary : blinker02.spin
	$(BSTC) -lb $^

clean :
	rm -f *.binary *.list
