pragma solidity ^0.6.0;


contract C{
    uint256 public data=30;
    uint256 internal iData = 10;
    
    function x() public returns(uint256){
        data = 3; //internal access
        return data;
    }
}

contract Caller{
    C c = new C();
    
    function f() public view returns(uint256){
        return c.data();
    }
}

contract D is C{
    function y() public returns(uint256){
        iData = 3;//internal access
        return iData;
    }
    
    function getResult() public view returns(uint256){
        uint256 a = 5;
        uint256 b = 2;
        uint256 result = a+b;
        return result;
    }
}