// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract StructAndArrays{
    // Struct : This are user defined data-type that are formed by combining more than one primitive type together.
    // for ex: A Person type can be created as follow:
    // we know that every person have a name so we can include it in person data-type
    // but more than one person can have same name so we can also include an id field to uniquly identify a person.
    struct Person{
        uint id;
        string name;
    }
    
    // variable of struct data types can be created as follows:
    Person public bob = Person({id: 1, name:"Bob"});
    Person public anotherPerson = Person({id: 2, name: "Bob"});
    Person public alice = Person({id:1, name:"Alice"});
    
    // ** Note : two variable of struct type can have same values but still are different entities, for ex:
    Person public bob2 = Person({id:1, name:"Bob"});     // here bob2 has same value of "id" & "name" as bob (defined above)
                                                         // Yet bob and bob2 are both different entities
                                                         // evethough we have specified an id field to make a person unique, it is still a logical field and thus needs to be
                                                         // handled accordingly
    // Arrays : A linear collection of data of a specific data-type
    // arrays can be of primitive as well as user-defined data-type as shown below
    // fixed size arrays: Size of the array is specified in declaration
    int[5] public integers = [1,2,3,4,5];
    
    // dynamic arrays: Size of the arrya can be changed by adding/removing elements
    Person[] internal group;   
    
    // adding element at the end of array
    function addInGroup(uint _id, string memory _name) public{
        group.push(Person({id:_id, name:_name}));
    }
    
    // accessing element at a specific index
    function personInGroupWithID(uint _index) public view returns(Person memory){
        return group[_index];
    }
    
    // getting array's length
    function getGroupLength() public view returns(uint){
        return group.length;
    }
    
    // removing the last element in array
    function removeLastElement() public {
        group.pop();
    }
    
    // Removing an element from an array without changing array's length
    function removeFromGroupArrayWithoutChangingTheLength(uint _index) public {
        delete group[_index];    // This line will not reduce the size of array
                                // Instead it will just replace the removed items place with the default value
                                // for ex: consider a uint array [1,2,3]
                                // if 2 is removed from [1,2,3] then the array will become [1,0,3] , 0 is the default value for uint
    }

    // Method 1: Removing an element form an array and reducing array's size respectively
    // Disadvantage: Gas costly
    // Advantage: Maintains the elements of array in proper order
    function removeElementMethodOne(uint _index) public {
        for(uint start=_index+1; start<group.length; start++){
            group[start-1] = group[start];
        }
        group.pop();    // removes the last element of array and reduce the length of array by 1
    }

    // Method 2: Removing an element from an array and reducing array's size respectively
    // Disadvantage: Alters the order of elements in array
    // Advantage: Gas efficient
    function removeElementMethodTwo(uint _index) public{
        group[_index] = group[group.length-1];
        group.pop();
    }  
}
