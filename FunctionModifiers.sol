//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
contract FunctionModifiers{
    // Function modifiers lets you add some additional functionalities to a pre-defined function
    // without changing function's original body
    // They are defined similar to functions
    // for ex: 

    int private state = 0;

    modifier check_if_user_is_authorised_to_change_state(uint _key){
        if(_key==1)
            _;      // Special character to represent the function on which this modifier will be applied
                    // this character is only allowed in a modifier
        // This modifier will first check if the key is valid i.e 1
        // This functionality will be added into the function on which this modifier is applied , 
        // In our case it is the changeState function defined below
        // Here "_" will be replaced my the function call on which this modifier is applied
    }

    // To apply modifier, just simply write the modifier after function name as shown below
    function changeState(uint _userKey,int _newStateValue) public check_if_user_is_authorised_to_change_state(_userKey){
        state = _newStateValue;
    }

    function showState() public view returns(int){
        return state;
    }

    // It is possible to apply more than one modifier for ex:
    // function fun() public modifier1, modifier2(someValue), modifier3 ... {
    // }
}
