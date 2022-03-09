//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
contract Constructors{
    uint public x;
    uint public y;

    // Constructor is a special type of function.
    // it can only be defined by using the keyword "constructor" as the functions name, as shown below.
    // a Constructor is called automatically when the contract is first created.
    // Every contract requires a constructor, if a constructor (such as below) is not defined in the contract
    // the compiler will automatically create and use a default constructor.
    // if a constructor is defined as below, than it will be used instead of default constructor.

    // if a constructor includes parameters such as shown below, than it is called parameterised constructors
    constructor(uint _x, uint _y) public {
        x = _x;
        y = _y;
    }
}
