pragma solidity ^0.6.0;


interface Demo{
    function getValue()  external returns(uint);
    function setValue(uint _a)  external;
}


contract A is Demo {
    uint a;
    function setValue(uint _a) external override{
        a = _a;
    }
    
      function getValue()  external override returns(uint){
        return a;
    }
    
    
}

contract Def{
    A obj = new A();
    function call() public returns(uint){
        obj.setValue(12);
        return obj.getValue();
    }
}

// pragma solidity ^0.6.10;
// interface X {
//     function setValue(uint _x) external;
// }

// interface Y is X {
//     function getValue() external returns (uint);
// }

// contract Z is Y {
//     uint x;
//     function setValue(uint _x) external override { x = _x; }
//     function getValue() external override returns (uint) { return x; }
// }