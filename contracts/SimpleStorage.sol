// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleStorage {
    uint256 private storedNumber;

    event NumberUpdated(uint256 oldNumber, uint256 newNumber, address indexed updater);

    function setNumber(uint256 _newNumber) external {
        uint256 old = storedNumber;
        storedNumber = _newNumber;

        emit NumberUpdated(old, _newNumber, msg.sender);
    }

    function getNumber() external view returns (uint256) {
        return storedNumber;
    }
}
