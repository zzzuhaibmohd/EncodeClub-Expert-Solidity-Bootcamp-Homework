pragma solidity ^0.8.4;

contract Scope {
    uint256 public count = 10;

    function increment(uint256 num) public returns(uint256){
        // Modify state of the count variable from within
        // the assembly segment
        assembly {
            let abc := sload(0)
            sstore(0, add(abc, num))
        }
    }
}