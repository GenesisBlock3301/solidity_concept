pragma solidity ^0.6.0;


contract A{
    
    uint number;
    
    function set(uint _number) public{
         number = _number;
    } 
}

contract B is A{
    uint a1 = 1;
    function get() virtual public view returns(uint){
        return a1;
    }
}

// multi level inheritence
contract C is B{
    function get() override public view returns(uint){
        return number;
    }
}