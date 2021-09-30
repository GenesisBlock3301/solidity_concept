pragma solidity ^0.6.0; 


abstract contract Calculator {
    
    constructor() public{
        
    }
    function getResult() public virtual view returns(uint);
}

contract Test is Calculator {
   function getResult() override public view returns(uint) {
      uint a = 1;
      uint b = 2;
      uint result = a + b;
      return result;
   }
}