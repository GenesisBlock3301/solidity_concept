pragma solidity ^0.6.0;


contract SolidityTest{
    uint256 public storeData;
    
    constructor() public{
        storeData = 40;
    }
    
    function getResult() public view returns(uint256){
        uint256 a = 1;
        uint256 b = 2;
        uint256 result = a+b;
        return result;
    }
}
