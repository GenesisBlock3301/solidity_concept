pragma solidity ^0.6.0;


contract Poly_demo{
    uint public a;
    uint public b;
    function setVal(uint8 _a) public{
        a = _a;
    }
    
     function setVal(uint16 _b) public{
        b = _b;
    }
    
    
    function setVal(uint16 _b,uint8 _a) public returns(uint16){
        b =  _b + uint16(_a);
        return uint16(b);
    }
    
}