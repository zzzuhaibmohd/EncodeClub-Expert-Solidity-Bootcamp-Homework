// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

// Write a function that will delete items (one at a time) from a dynamic array without
// leaving gaps in the array.
// Reference - https://blog.finxter.com/how-to-delete-an-element-from-an-array-in-solidity/
// Goerli Contract - https://goerli.etherscan.io/address/0xa7fcc40bc025f7250533f615e946a4847c3d650a

contract DynamicArray {

        uint[] public testArray;

        constructor() {
              testArray = [0,1,2,3,4,5,6,7,8,9,10,11];  
        }
        
        //Remove array items at Index 8, 2 and 7 via deleteIndex
        function deleteIndex(uint256 index) public{
                for(uint i = index; i < testArray.length - 1; i++){
                        testArray[i] = testArray[i+1]; //push the item at index i to last position   
                }
                testArray.pop(); // remove the last element
        }

        function getArrayLength() public view returns(uint256){
                return testArray.length;
        }
}
