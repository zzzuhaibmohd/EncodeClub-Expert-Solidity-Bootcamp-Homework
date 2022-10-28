### EncodeClub-Expert-Solidity-Bootcamp-Homework-Week1

## When we do the CODECOPY operation, what are we overwriting ?

The codecopy overwrites the first memory slots including the free memory pointer.

## Could the answer to Q1 allow an optimisation ?

remove the free memory pointer initialisation code since it is not used.

## Can you trigger a revert in the init code in Remix ?

You can in Remix by sending ether(msg.value) as you deploy the contract which is not payable.

## Can you think of a situation where the opcode EXTCODECOPY is used ?

It is used in delegate calls and proxy contracts and upgradable contracts.
