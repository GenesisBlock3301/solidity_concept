pragma solidity ^0.6.0;



contract modifier_demo{
    address owner;
    uint256 private data;
    
    // this is constructor when load contract.
    constructor()public{
        owner = msg.sender;
    }
    
    // create modifier
    modifier onlyOwner{
        if(msg.sender == owner){
            _;
        }
    }
    
    // only modifier can call this function
    function onlyOwnerCanCall(uint256 _a) public onlyOwner{
       data = _a+10;
    } 
    
    // anyone can call this function
    function anyCanCall() public view returns(uint256){
        return data;
    }
}