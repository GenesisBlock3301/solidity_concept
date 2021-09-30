pragma solidity ^0.6.0;



contract A{
    uint a;
    
    function setValue(uint _a) public{
        a = _a;
    } 
    
    function getValue() virtual public view returns(uint){
        return 5;
    }
    
}

contract B is A{
    function getValue() override public view returns(uint){
        return a;
    }
}

contract C{
    A obj1 = new A();
    B obj2 = new B();
    
    function call() public returns(uint,uint){
        obj2.setValue(100);
        return (obj2.getValue(),obj1.getValue());
    }
    
    function view_call() public view returns(uint,uint){
        return(obj1.getValue(),obj2.getValue());
    }
}

