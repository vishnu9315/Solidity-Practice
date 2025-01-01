// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract SumArray {

     function returnFirstElement(uint256[] calldata arr) public pure returns (uint256) {

        require(arr.length > 0, "Length of array should be greater than 0");
        uint256 product = 1;

        for(uint256 i = 1; i <= arr.length; i++){
            product *= arr[i];
        }

        return product;
       
    }
}
