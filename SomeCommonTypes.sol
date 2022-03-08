// SPDX-License-Identifier: MIT     // This line is required while developing a contract as per the official guidelines 
                                    // It specifies a license for the contract, MIT is one of the most common one 
                                    // and yes it will start with "//" 
                                    // a compiler migth showcase warning in its absense.
                                    
// pragma solidity 0.6.0;               This targets a specific version of contract
// pragma solidity >=0.6.0 <0.9.0;      This targets versions between 0.6.0(inclusive) and 0.9.0
pragma solidity ^0.6.0;              // This targets every version from 0.6.0(inclusive) to 0.7.0(exclusive)

contract SimpleStorage{
    uint var1 = 10;     // uint stands for unsigned Integer i.e only +ve integers
    // uint variables can be assigned a fixed size like
    uint256 var2 = 10;  // uint with 256 bits.
    // uint2^n is the general form for this type where 3 <= n <= 8

    int var var3 = -10;  // int can contain +ve as well as -ve integers
    // similar to uint2^n, int2^n is also a valid form
    int256 var4 = -10; 

    bool var5 = false;   // bool stands for boolean contains true or false
    string var6 = "This is a String";   // string can contains a list of characters
    address var7 = 0x474382984;         // address stores some type of etherium address like block address in hexadecimal form
    bytes2 var8 = "Bytes";              // bytes2 stands for 2 bytes
    // its general form is bytes2^n where 2 <= n <= 5

    *** Every type in solidity has a default value***
    *** That means if no value is assigned to the variable, its default value will be considered***
    *** for ex: int a;      <-- Here a=0 , if no value is assigned to it later ***
    
    // For more types, check : https://docs.soliditylang.org/en/latest/types.html
}
