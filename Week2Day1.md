# EncodeClub-Expert-Solidity-Bootcamp-Homework-Week2

## When we do the CODECOPY operation, what are we overwriting ?

One of the examples of CODECOPY is to copy the runtime code once init code of constructor is done executing.(Need to verify!) 

## Could the answer to Q1 allow an optimisation ?

Not sure yet.

## Can you trigger a revert in the init code in Remix ?

Yes, For Example, if we sent some wei amount as part of the constructor init which is not payable.

## Can you think of a situation where the opcode EXTCODECOPY is used ?

EXTCODECOPY is used when there is a need to interact with external contracts - in order to execute a function. For example: interact with an oracle.
