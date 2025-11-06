module top (
    input clk,
    input rst,
    input start,
    input [127:0] data_in,
    input [127:0] key_in,
    output [127:0] data_out,
    output done
);
    // Instantiate AES core
    aes_core aes_inst (
        .clk(clk),
        .rst(rst),
        .start(start),
        .plaintext(data_in),
        .key(key_in),
        .ciphertext(data_out),
        .done(done)
    );
endmodule
