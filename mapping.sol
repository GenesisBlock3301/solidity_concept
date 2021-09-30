pragma solidity ^0.6.0;


contract mapping_demo{
    uint id = 0;
    mapping(uint=>string) nameList;
    
    function setValue(string memory username) public{
        id++;
        nameList[id] = username;
    } 
    
    function getValue(uint _id) public view returns(string memory){
        return nameList[_id];
    }
    
    function totalUser() public view returns(uint){
        return id;
    }
}