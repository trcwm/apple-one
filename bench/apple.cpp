#include "testbench.h"
#include "Vapple.h"

int main(int argc, char **argv) {
	Verilated::commandArgs(argc, argv);
	TESTBENCH<Vapple> *tb = new TESTBENCH<Vapple>();

    tb->opentrace("trace.vcd");

	while(!tb->done()) {
		tb->tick();
	} exit(EXIT_SUCCESS);
}
