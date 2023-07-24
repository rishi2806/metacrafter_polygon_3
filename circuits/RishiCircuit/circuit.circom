pragma circom 2.0.0;

template RishiCircuit () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;  

   // Declaration of middle signals
   signal x;
   signal y;

   // Final output
   signal output q; 

   //components
   component andGate = AND();
   component notGate = NOT();
   component orGate = OR();

   //logic for circuit
   andGate.a <== a;
   andGate.b <== b;
   x <== andGate.out;

   notGate.in <== b;
   y <== notGate.out;

   orGate.a <== x;
   orGate.b <== y;
   q <== orGate.out;

   //Value of Q when input a=0 & b=1;
   log("Q equal to:", q); 
}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}
template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}
template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

component main = RishiCircuit();