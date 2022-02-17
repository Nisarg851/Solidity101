pragma solidity ^0.6.0;
contract VisibilityAndFunctions{
    // visibility Defines the scope for a variable or a function in which they can be used
    // There are 4 types of visibilties in solidity
    // 1. public :- Defines that the variable/function can be used by this(current/parent contract) as well as outside contracts.
    // 2. external :- Defines that the variable/function can be used by the outside contracts only.
    // 3. internal :- Defines that the variable/function can be used by only this(current/parent contract) and its sub/children contracts.
    // 4. private :- Defines that the variable/function can be used by this(current/parent contract) contract only.

    // for ex:
    int8 public var1 = 10;      // Can be accessed by any contract directly
  //  int8 external var2 = 10;    // Can be accessed by any contract except this one
    int8 internal var3 = 10;    // Can be accessed by only this and its children contracts
    int8 private var4 = 10;     // Can be accessed inside this contract only

    // Types of function
    // Simple functions:- Functions that performs task which can manipulate the state of contract
    function fun1(int8 par1) public{
        var4 = par1;        // here var4 variable is changed hence the state of contract has changed
    }

    //--> view functions:- Functions that performs tasks which requires the state of contract
    //--> "view" keyword specifies that the function can only view the state of contract but not modify it
    //--> ** Similar to getter methods in OOP langs**
    function fun2(int8 par1) public view returns(int8){
        int8 temp = par1 + var4;
        return temp;
    }

    //--> pure functions:- Functions that perform tasks that does not change or view the state of contract
    function fun3(int8 newValue) public pure returns(int8){
        int8 temp = newValue + newValue;
        return temp;
    }
}