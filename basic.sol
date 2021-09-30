pragma solidity ^0.6.0;


contract SimpleStorage{
    uint256 storeData;
    function set(uint256 x) public{
        storeData = x;
    }
    function get() public view returns(uint256){
        return storeData;
    }
}

