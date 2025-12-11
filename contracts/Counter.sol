// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    int256 private count;

    event CountChanged(int256 newCount, address indexed caller);

    function current() external view returns (int256) {
        return count;
    }

    function increment() external {
        count += 1;
        emit CountChanged(count, msg.sender);
    }

    function decrement() external {
        count -= 1;
        emit CountChanged(count, msg.sender);
    }
}
