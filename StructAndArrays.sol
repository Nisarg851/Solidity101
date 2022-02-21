// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract StructAndArrays{
    // Struct
    struct People{
        uint id;
        string name;
    }
    People public bob = People({id: 1, name:"Bob"});
    People public anotherPerson = People({id: 1, name: "Bob"});   

    // Arrays
    int[5] public integers = [1,2,3,4,5];
    People[] internal group;
    
    function addInGroup(uint _id, string memory _name) public{
        group.push(People({id:_id, name:_name}));
    }

    function personInGroupWithID(uint id) public view returns(People memory){
        return group[id];
    }
}