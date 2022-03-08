// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
contract Maps{
    // Mapping: It is used to map/pair two similar/different type of data together
    // for ex: we can create a mapping to check for a person's income using their name
    mapping(string => uint) private incomeOf;

    function getIncomeOf(string memory _name) public view returns(uint){
        return incomeOf[_name];
    }
    
    function setIncomeOf(string memory _name, uint income) public {
        incomeOf[_name] = income;
    }
}
