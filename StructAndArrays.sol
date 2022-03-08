// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

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
    // Arrays : A linear collection of a specific data-type
    // arrays can be of primitive as well as user-defined data-type as shown below
    // fixed size arrays: Size of the array is specified in declaration
    int[5] public integers = [1,2,3,4,5];
    // dynamic arrays: Size of the arrya can be changed by adding/removing elements
    People[] internal group;
    
    function addInGroup(uint _id, string memory _name) public{
        group.push(People({id:_id, name:_name}));
    }

    function personInGroupWithID(uint id) public view returns(People memory){
        return group[id];
    }
}
