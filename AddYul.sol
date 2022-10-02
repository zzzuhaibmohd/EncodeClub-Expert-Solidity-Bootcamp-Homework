pragma solidity ^0.8.10;

contract AddYul{

  function addition() public pure returns (uint) {
      assembly {
        let x := 0x07
        let y := 0x08
        let result := add(x, y)
        mstore(0x80, result) // store result in memory
        return(0x80, 32) // return 32 bytes from memory
      }
  }
}
