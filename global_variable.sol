pragma solidity ^0.6.0;


contract Globaldemo{
    
    function myaddress() payable public  returns(address,uint){
        return (msg.sender,msg.value);
    }
}

// ownder-> 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2