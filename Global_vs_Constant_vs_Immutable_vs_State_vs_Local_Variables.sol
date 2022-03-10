// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
contract StateVsLocalVariables{

    // ************* Pre-Defined Values ****************** //
    // Global variables
    uint public timestamp = block.timestamp;   // - Global variables can be accessed anywhere in the contract
    address public sender = msg.sender;        // - This variables are pre-defined for each contract and 
    uint public blockNumber = block.number;    //   its value depend on the contract it is used in
                                               // - They contain meta-deta about the contract

    // ************* User-Defined Values ****************** //
    // State Variables
    uint public stateVariables = 0; // - State variables are variables that exists directly inside the contract
                                    // - they define the state of the contract, thus titled "State variables"
                                    // - They require visibility specifiers such as "public" to specifiy their access
                                    // - Their Life-span is as long as contracts
    
    // Constant Variables
    uint public constant constantVariable = 1;  // constant variables have a fixed value i.e it can't be changed once assigned
                                                // The value of a constant should be passed when it is declared
                                                // if no value is passed, its default value is considered according to its type;

    // Immutable Variables
    uint public immutable immutableVariable;    // Immutable variables are same as constants, accept there are two ways to initialize it
                                                // a value can be assigned directly during its declaration as shown with constantVariable
                                                // or it can be assigned inside a constructor, as shown below
                                                // Once a value is assigned, it behaves like a constant

    constructor(uint valueForImmutableVariable) public {
        immutableVariable = valueForImmutableVariable;
    }

    function fun() public pure returns(uint){

        // Local variables
        uint localVariables = 0;// - Variables which are defined under scope with short life-span (like a function)
                                //   are known as local variables
                                // - here the "localVariables" will only live till the function "fun" is under execution
                                // - it can not be accessed from outside this function
                                // - it does not require any visibility specifier such as "public" as its visibility is 
                                //   fixed under the scope of this function
        return localVariables;
    }

}
