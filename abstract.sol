pragma solidity ^0.6.0; 

// declare abstract contract
abstract contract Calculator {
    function getResult() public virtual view returns(uint);
}

// is-a relationship
contract Test is Calculator {
   function getResult() override public view returns(uint) {
      uint a = 1;
      uint b = 2;
      uint result = a + b;
      return result;
   }
}