# Polygon-zkEVM
Pragma circom 2.0.0 is a declarative language which is used to implement and describing arithmetic circuits. It is used to specify circuits and their logics and used in the context of cryptographic applications and zero knowledge proofs.

## Description
In this, there is a basic circuit named as `RishiCircuit` which consists of three logic gates: `AND`, `NOT`, and `OR` gate. This circuit basically takes two input signals i.e. a and b, and produces a single output signal i.e. Q.

### Signal description
```
   -> Declaration of signals. 
   signal input a;  
   signal input b;  

   -> Signal by gates.
   signal x;
   signal y;

   -> Final signal output.
   signal output q;
```

   Here, signal `a` and `b` are the input signals for the gates, signal `x` and `y` are the intermediate signals in the gates and `q` is the final output by the gates.
   

### Component gates description
   In RishiCircuit following component gates are used-
   
   component andGate = AND();
   
   component notGate = NOT();
   
   component orGate = OR();
   


### Circuit Logic
   ```
   andGate.a <== a;
   andGate.b <== b;
   x <== andGate.out;

   notGate.in <== b;
   y <== notGate.out;

   orGate.a <== x;
   orGate.b <== y;
   q <== orGate.out;
```

1- `andGate` - an instance of `AND` template. It takes inputs `a` and `b` and produces an output `out` which will store in the `x` signal.

2- `notGate` - an instance of `NOT` template. It takes input `b` and produces an output `out` which is stored in the `y` signal.

3- `orGate` - an instance of `OR` template. It takes inputs `x` and `y` and produces an output `out` which is the final output signal `q`.

## Geting Started
### Prerequisites
1- Ethereum Development Environment.

2- Npm , Node.js and npm: Node.js should be installed on the system.

3- Circom Compiler: To generate the circuit.circom file you need the circom compiler.

### Program Execution
Step 1: Make the clone of `hardhat-circom` respository in the system.

Step 2: Open the terminal and install all the required dependencies of node pack manager by using this command.

```
npm i
```

Step 3: In same terminal, run the mentioned command for compiling the circuit.circom file and generate the circuit intermediaries.

```
npx hardhat circom
```

Step 4: In the input.json file, write the inputs as a=0, b=1 for generate the proof.
```
{
  "a": 0,
  "b": 1
}
```
Step 5: To deploy the program locally use these commands-

```
npx hardhat run scripts/deploy.ts
npm install dotenv
```

Step 6: Now you have to set up connection to Mumbai testnet on polygon blockchain. After that, provide information to interact with program using a protected(.env) private key.

Step 7: On Mumbai network deploy program using-

```
npx hardhat run scripts/deploy.ts --network mumbai
```

Step 8: Now you have to verify the proof.

## Author
Rishi Kumar Singh


