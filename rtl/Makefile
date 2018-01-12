all:	test
CXX   := g++
FBDIR := .
VDIRFB:= $(FBDIR)/obj_dir
VERILATOR := verilator

.PHONY: test
test: $(VDIRFB)/Vapple__ALL.a

$(VDIRFB)/Vapple__ALL.a: $(VDIRFB)/Vapple.h $(VDIRFB)/Vapple.cpp
$(VDIRFB)/Vapple__ALL.a: $(VDIRFB)/Vapple.mk
$(VDIRFB)/Vapple.h $(VDIRFB)/Vapple.cpp $(VDIRFB)/Vapple.mk: apple.v

$(VDIRFB)/V%.cpp $(VDIRFB)/V%.h $(VDIRFB)/V%.mk: $(FBDIR)/%.v
	$(VERILATOR) -Wall -trace -cc $*.v

$(VDIRFB)/V%__ALL.a: $(VDIRFB)/V%.mk
	cd $(VDIRFB); make -f V$*.mk

.PHONY: clean
clean:
	rm -rf $(VDIRFB)/*.mk
	rm -rf $(VDIRFB)/*.cpp
	rm -rf $(VDIRFB)/*.h
	rm -rf $(VDIRFB)/

