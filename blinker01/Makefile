UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
	BSTC := bstc.osx
else
	BSTC := bstc.linux
endif

blinker01.binary : blinker01.spin
	$(BSTC) -lb $^

clean :
	rm -f *.binary *.list
