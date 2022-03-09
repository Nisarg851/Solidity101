// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
contract StateVsLocalVariables{
    uint public stateVariables = 0; // - State variables are variables that exists directly inside the contract
                                    // - they define the state of the contract, thus titled "State variables"
                                    // - They require visibility specifiers such as "public" to specifiy their access
                                    // - Their Life-span is as long as contracts
    
    function fun() public pure {
        uint localVariables = 0;// - Variables which are defined under scope with short life-span (like a function)
                                //   are known as local variables
                                // - here the "localVariables" will only live till the function "fun" is under execution
                                // - it can not be accessed from outside this function
                                // - it does not require any visibility specifier such as "public" as its visibility is 
                                //   fixed under the scope of this function
    }
}
