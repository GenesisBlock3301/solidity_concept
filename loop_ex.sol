pragma solidity ^0.6.0;



contract Loop{
    function sumeStore(uint n) public pure returns(uint){
        uint sum = 0;
        for(uint i = 1; i<=n;i++){
            sum+=i;
            if( i == 3){
                continue;
            }
        }
        return sum;
    }
}