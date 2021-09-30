pragma solidity ^0.6.0;



contract struct_array{
    
   uint a = 2;
   uint public b = 4;
   function getValue() public returns(string memory){
       return show();
   }
   
   function show() private returns(string memory){
       return "Hello sifat";
   }
    
}