pragma solidity 0.8.7;

contract BadString {
    string myString;

    function setString(string calldata newValue) public {
        myString = newValue;
    }

    // allocate memory
    function setStringV2(string memory newValue) public {
        myString = newValue;
    }
}