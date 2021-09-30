# Solidity
**What is solidity?**
>>Solidity is a contract-oriented, high-level programming language for implementing smart contracts. Solidity is highly influenced by C++, Python and JavaScript and has been designed to target the Ethereum Virtual Machine (EVM).

# Basic example of Solidity
```solidity
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
```

# Access modifier:

**Public** : Anyone can access .\
**External** : Cannot be accessed internally .\
**Internal** : only the contract and contracts deriving from it can access.\
**Private** : can be access only from this contracts.




# Functions:

## View
> This declares that no state will be changed. In other words the function is simply returning state 
> (sampleNumber), but not making any changes to the data currently on the blockchain.

Example:-
```solidity
function get() public view returns(uint256){
        return storeData;
    }
```

## Pure
> Declares that no state variable will be changed or read. This is an even more stringent declaration we are not even reading any data outside of the function itself. Had we attempted to return the 
> variable sampleNumber within a function declare pure the contract would have failed to compile.

Example:-
```solidity
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
```


# Abstract contract:

1. abstract contract are contracts that have partial function defination.

2. You Cannot create an instance of an abstract contract.

3. An abstract contract must be inheritent by child contract for utilizing is function.

4. Thi function singatures terminator using the semicolon,;,character.

5. There is no solidity provided keyword to mark a contract as abstract.

6. A contract becomes an abstract class if it has functions withour implementation.

Example:-
```solidity
pragma solidity ^0.6.0; 
// declare abstract contract
abstract contract Calculator {
    function getResult() public virtual view returns(uint);
}

// is-a relationship
contract Test is Calculator {
   function getResult() override public view returns(uint) {
      uint a = 1;
      uint b = 2;
      uint result = a + b;
      return result;
   }
}
```


# Interface contract attributes:

**Pure abstracts are similar to interfaces**

### Restriction of interfaces contract:

1. They cannot inherit other contracts or interface.

2. All declared funtions must be external.

3. They cannot declare a constractor.

4. The cannot declare state variables.


Example:
```solidity
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
```

# Transaction and message global variables

| Variable Name      | Description                                 | 
| :---               |    :----:                                   |
| msg.sender(address)| Address of caller who invoked the function  | 
| msg.value(uint)    | Amount of wei sent along with transaction.  |


 For declaring above global variable, this function must be a payable function.
Example:-
```solidity
pragma solidity ^0.6.0;
contract Globaldemo{
    function myaddress() payable public  returns(address,uint){
        return (msg.sender,msg.value);
    }
}
```

# Modifier in Solidity

1. Modifier help in modifying the behavior of a function.
2. Modifier are defined using the modifier keyword.

3. The code for modifier is placed within curly brackets.

4. The code within a modifier can validate the incoming value and can conditionally execute the called function after evaluation.

5. The same modifier can be applied to multiple functions.

6. Modifiers can only be applied to functions.

7. The **_;** identifier is of special importance here -- its purpose is to replace itself with the function code that is invoked by the caller. 

Example:

```solidity
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
```

 