pragma solidity ^0.6.0;


contract ConstDemo{
    
    uint private a;
    uint private b;
    uint private c;
    
    constructor(uint _a,uint _b,uint _c) public{
        a = _a;
        b = _b;
        c = _c;
    }
    
    function setValueA(uint _a) public {
        a = _a;
    }
    
    function setValueB(uint _b) public {
        b = _b;
    }
    function setValueC(uint _c) public {
        c = _c;
    }
    
    function getValue() public view returns(uint,uint,uint){
        return(a,b,c);
    }
}