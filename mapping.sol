// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
contract Maps{
    // Mapping 
    mapping(string => int) internal investmentReturns;

    function setInvestmentReturnsOf(string memory _name, int _value) public{
        investmentReturns[_name] = _value;
    }

    function getInvestmentReturnsOf(string memory _name) public view returns(int){
        return investmentReturns[_name];
    }
}