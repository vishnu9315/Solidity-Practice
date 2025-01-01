// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Stack {
    /*
        Implementing a stack using an array `stack` with the following functions:
        a. `push` appends a new value to the end of the array.
        b. `peek` returns the last element of the array without removing it.
        c. `pop` returns the last element of the array and removes it.
        d. `size` returns the length of the array.
        e. `getStack` returns the entire stack.
    */

    uint256[] private stack; // The stack is implemented as an array.

    // Constructor to initialize the stack with initial values (optional).
    constructor(uint256[] memory _stack) {
        stack = _stack;
    }

    // a. Push a new value onto the stack.
    function push(uint256 value) public {
        stack.push(value);
    }

    // b. Peek at the top value of the stack without removing it.
    function peek() public view returns (uint256) {
        require(stack.length > 0, "Stack is empty");
        return stack[stack.length - 1];
    }

    // c. Pop the top value off the stack and return it.
    function pop() public returns (uint256) {
        require(stack.length > 0, "Stack is empty");
        uint256 top = stack[stack.length - 1];
        stack.pop();
        return top;
    }

    // d. Return the size of the stack.
    function size() public view returns (uint256) {
        return stack.length;
    }

    // e. Return the entire stack.
    function getStack() public view returns (uint256[] memory) {
        return stack;
    }
}
