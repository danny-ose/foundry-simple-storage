// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 public storedData;
    uint256 public callCount;

    event ValueChanged(uint256 newValue);

    constructor(uint256 _value) {
        storedData = _value;
    }

    function setFavoriteNumber(uint256 favoriteNumber) public {
        storedData = favoriteNumber;
        callCount += 1;
        emit ValueChanged(storedData);
    }

    function getFavoriteNumber() public view returns (uint256) {
        return storedData;
    }

    function getCallCount() public view returns (uint256) {
        return callCount;
    }

    function increment(uint256 amount) public {
        storedData += amount;
        callCount += 1;
    }
}
