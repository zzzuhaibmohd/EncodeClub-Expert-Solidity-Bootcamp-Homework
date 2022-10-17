# EncodeClub-Expert-Solidity-Bootcamp-Homework-Week3

## Why are negative numbers more expensive to store than positive numbers ?
There is greater cost when setting a bit from 0 to 1, so since negative numbers are
represented by fffff... they are mostly ones.

## Which is cheaper and why ?
The assembly is cheaper since the solidity code always adds a zero check for he
demoninator

`//Gas consumed assembly -> 28332 gas | 24636 gas`

`//Gas consumed traditional -> 27955 gas | 24308 gas`
