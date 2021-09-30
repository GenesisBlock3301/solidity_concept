# Access modifier

**public** : Anyone can access .\
**external** : Cannot be accessed internally .\
**internal** : only the contract and contracts deriving from it can access.\
**private** : can be access only from this contracts.\




# Functions

## view
>> This declares that no state will be changed. In other words the function is simply returning state 
>> (sampleNumber), but not making any changes to the data currently on the blockchain.

```
function get() public view returns(uint256){
        return storeData;
    }
```

## pure
>> Declares that no state variable will be changed or read. This is an even more stringent declaration >> we are not even reading any data outside of the function itself. Had we attempted to return the 
>> variable sampleNumber within a function declare pure the contract would have failed to compile.

```
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

> 1. abstract contract are contracts that have partial function defination.

> 2. You Cannot create an instance of an abstract contract.

> 3. An abstract contract must be inheritent by child contract for utilizing is function.

> 4. Thi function singatures terminator using the semicolon,;,character.

> 5. There is no solidity provided keyword to mark a contract as abstract.

> 6. A contract becomes an abstract class if it has functions withour implementation.


# Interface contract attributes:

**Pure abstracts are similar to interfaces**

### Restriction of interfaces classes:

> 1. They cannot inherit other contracts or interface.

> 2. All declared funtions must be external.

> 3. They cannot declare a constractor.

> 4. The cannot declare state variables.

