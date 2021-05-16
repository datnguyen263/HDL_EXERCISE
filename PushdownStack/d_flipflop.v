module d_flipflop(Q, Qn, D, Clk);
   output Q;
   output Qn;
   input  Clk;
   input  D;

   wire   Cn;   // Control input to the D latch.
   wire   Cnn;  // Control input to the SR latch.
   wire   DQ;   // Output from the D latch, input to the gated SR latch.
   wire   DQn;  // Output from the D latch, input to the gated SR latch.
   
   not(Cn, Clk);
   not(Cnn, Cn);   
   d_latch dl(DQ, DQn, Cn, D);
   sr_latch_gated sr(Q, Qn, Cnn, DQ, DQn);   
endmodule // d_flipflop