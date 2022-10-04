
# EncodeClub-Expert-Solidity-Bootcamp-Homework-Week3

## How can the use of tx.origin in a contract be exploited ?
`tx.origin` is a global variable in Solidity which returns the address of the account that initiated a transaction. 
Suppose we use `tx.origin` for authorization and make an external call, an attacker can bypass these checks by since
`tx.origin` returns the original sender of the transaction unlike `msg.sender` 

## What do you understand by event spoofing ?
To create hype, a malicious user will create fake events like Transfer against popular addresses and exchanges, to look 
like as if the tokens are being bought by poular accounts and exchanges.

## What problems can you find in this contract designed to produce a random number
First of declaring varaibles as private, only means that the varaible is read-only, Anyone can query the contract instance
to extract the value stored at slot0. Once the attacker finds the hardcoded value of `rand1` then they can easily write a 
function that iterates over the `Max` which results in return value 1.

## What problems are there in this contract
Missing check for duplcate students via joinCourse.
