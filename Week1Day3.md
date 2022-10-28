### EncodeClub-Expert-Solidity-Bootcamp-Homework-Week1

## What are the advantages and disadvantages of the 256 bit word length in the EVM?

256 bits is equal to 32 byte word size. Using a 4/8/16 byte word is too less to store addresses (20 bytes) and other big values.
It kind of serves as a sweet spot between what is too less and too much. Once can easily club multiple state variable declartions with in a single slot of storage.
It also facilitates Keccak256 hash scheme and elliptic-curve computations. 

256 bit integers are incredibly impractical and unnecessary for almost any application that the EVM is designed for, Like storing the totalSupply  of tokens, storing the user addresses etc., 

## What would happen if the implementation of a precompiled contract varied between Ethereum clients ?

Precompiled contracts in Ethereum are contracts that include complex cryptographic computations, but do not require the overhead of the EVM.
Examples ecrecover, sha256 etc., Any change in the implementation of a precompiled contract between Ethereum clients may result in inconsistent results.
For Example: Calculating the hash values, Verifying the sender of a message. If different Ethereum clients yield different results then the clients will
never reach a state of consensus for that particular transaction verification - A Consensus Break.
