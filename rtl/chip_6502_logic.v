`include "chip_6502_nodes.inc"

module chip_6502_logic (
    /* verilator lint_off UNUSED */
    /* verilator lint_off UNDRIVEN */
    input  [`NUM_NODES-1:0] i,
    output [`NUM_NODES-1:0] o);
    /* verilator lint_on UNUSED */
    /* verilator lint_on UNDRIVEN */

    `include "logic.inc"
endmodule
