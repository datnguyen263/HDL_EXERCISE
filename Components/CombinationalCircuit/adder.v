module addertest4(sum, carry, a, b, cin);
input a, b, cin;
output sum, carry;
//reg sum, carry;
wire w1, w2, w3;
xor(w1, a, b);
xor(sum, w1, cin);
and(w2, cin, w1);
and(w3, a, b);
or(carry, w2, w3);
endmodule

