// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract ReturnMultipleValues{
    uint private x = 0;
    int private y = -1;
    string private z = "A String";

    // It is Possible to return multiple values from a function in from of a tuple
    // A tuple is just a fixed collection of items/datas

    // one way
    function getValues() public view returns(uint,int,string memory){
        return (x, y, z);   // <-- here "(x,y,z)" is a tuple 
    }

    // Another way
    function getValueAnotherWay() public view  returns(uint a, int b, string memory c){
        a = x;
        b = y;
        c = z;
    }

}
