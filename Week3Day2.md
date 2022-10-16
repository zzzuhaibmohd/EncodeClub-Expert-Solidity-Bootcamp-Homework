# EncodeClub-Expert-Solidity-Bootcamp-Homework-Week3

## Why are negative numbers more expensive to store than positive numbers ?
Based on my understanding at this point of time, storing negative numbers is more expensive since there is we need to perform 
the complement of the number before storing it. 

For example: Consider an example of int8, the range is from (-255 to 255).
Suppose you want to store -5, since the stack cannot store the negative number,
it will perform complment of int(-5) == int(250) and then store it.
Since we are performing an extra operation before storing, hence the extra gas.

## Which is cheaper and why ?
using the assembly code to divide the input and store is cheaper.


`//Gas consumed assembly -> 28332 gas | 24636 gas`

`//Gas consumed traditional -> 27955 gas | 24308 gas`
