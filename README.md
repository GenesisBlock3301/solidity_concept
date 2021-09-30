# Access modifier

**public** : Anyone can access .
**external** : Cannot be accessed internally .
**internal** : only the contract and contracts deriving from it can access.
**private** : can be access only from this contracts.



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
