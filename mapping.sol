// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
contract Maps{

    // Mapping: It is used to map/pair two similar/different type of data together
    // for ex: we can create a mapping to check for a person's income using their name
    mapping(string => uint) private incomeOf;

    // Getting value with the help of key
    function getIncomeOf(string memory _name) public view returns(uint){
        return incomeOf[_name];
    }
    
    // Setting value with the help of key
    function setIncomeOf(string memory _name, uint _income) public {
        incomeOf[_name] = _income;
    }

    // Deleting the value with the help of key
    function removeIncomeOf(string memory _name) public {
        delete incomeOf[_name];     // this would not actually remove the key=>value pair from the mapping
                                    // rather it will just assign the default value of the element present at the key
                                    // with respect to its type
                                    // here, since the value is of type uint in income
                                    // value at key _name will be replaced by the default value of uint
                                    // which is same as incomeOf[_name] = 0;
    }
}
