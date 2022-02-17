pragma ^0.6.0;
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

    //Types of function
    //--> Simple functions:- This are normal functions like any other language
    function fun1(uint par1) return(uint){
        uint temp = par1+par1;
        return temp;
    }

    //--> view functions:- Provides read only access, similar to getter methods
    //--> *** read access is provided according to the visibility of the scope ***
    function fun2() public view return(uint){
        return var4;
    }

    //--> pure functions:- Provides write only access, similar to setter methods
    //--> *** write access is provided according to the visibility of the scope ***
    function fun3(uint newValue) public pure{
        var4 = newValue;
    }
}