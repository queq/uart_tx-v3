DESIGN          = uart_tx
PINS            = $(DESIGN).ucf
DEVICE          = xc7a100t-1csg324
BGFLAGS         = -g TdoPin:PULLNONE -g DonePin:PULLUP \
                  -g CRC:enable -g StartUpClk:CCLK

SIM_CMD         = vsim 
SIM_COMP_SCRIPT = simulation/$(DESIGN)_TB.do
SIMGEN_OPTIONS  = -p $(FPGA_ARCH) -lang $(LANGUAGE)
IVERILOG        = iverilog

SAKC_IP         = 192.168.1.1

SRC             = $(DESIGN).v dataSend.v prescaler.v

SIM_SRC = $(DESIGN)_TB.v          \
	sim/unisims/BUFG.v        \
	sim/unisims/DCM.v         \
	sim/unisims/FDDRRSE.v


 
all:            bits

remake:         clean-build all

clean:
	rm -f *~ */*~ a.out *.log *.key *.edf *.ps trace.dat 
	rm -f *.bit

cleanall: clean
	rm -rf build simulation

bits:           $(DESIGN).bit

#
# Synthesis
#
build/project.src:
	@[ -d build ] || mkdir build
	@[ -d simulation ] || mkdir simulation 
	@rm -f $@
	for i in $(SRC); do echo verilog work ../$$i >> $@; done
	for i in $(SRC_HDL); do echo VHDL work ../$$i >> $@; done

build/project.xst: build/project.src
	echo "run" > $@
	echo "-top $(DESIGN) " >> $@
	echo "-p $(DEVICE)" >> $@
	echo "-opt_mode Area" >> $@
	echo "-opt_level 1" >> $@
	echo "-ifn project.src" >> $@
	echo "-ifmt mixed" >> $@
	echo "-ofn project.ngc" >> $@
	echo "-ofmt NGC" >> $@
	echo "-rtlview yes" >> $@

build/project.ngc: build/project.xst $(SRC)
	cd build && xst -ifn project.xst -ofn project.log

build/project.ngd: build/project.ngc $(PINS)
	cd build && ngdbuild -p $(DEVICE) project.ngc -uc ../$(PINS)

build/project.ncd: build/project.ngd
	cd build && map -pr b -p $(DEVICE) project

build/project_r.ncd: build/project.ncd
	cd build && par -w project project_r.ncd

build/project_r.twr: build/project_r.ncd
	cd build && trce -v 25 project_r.ncd project.pcf

$(DESIGN).bit:  build/project_r.ncd build/project_r.twr
	cd build && bitgen project_r.ncd -l -w $(BGFLAGS)
	@mv -f build/project_r.bit $@

build/project_r.v: build/project_r.ncd
	cd build &&  ngd2ver project.ngd  -w project.v

modelsim: 
	cd simulation; $(SIM_CMD) -do $(DESIGN)_TB.do

timesim: build/project_r.v
	cd simulation; $(SIM_CMD) -do $(DESIGN)_TIMING_TB.do

iversim: build/project.src
	$(IVERILOG) -o simulation/$(DESIGN)_TB $(DESIGN)_TB.v $(SRC) 
	vvp simulation/$(DESIGN)_TB -vcd; mv $(DESIGN)_TB.vcd simulation/
	gtkwave simulation/$(DESIGN)_TB.vcd&

upload: $(DESIGN).bit
	scp $(DESIGN).bit root@$(SAKC_IP): 
