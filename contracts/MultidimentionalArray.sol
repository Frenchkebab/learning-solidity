pragma solidity 0.8.7;

contract MultidimensionalArray {
    uint[2][1] matrix;

    function setMatrix() external {
        matrix[1][0] = 2; // array out of bounds
    }

    function getMatrix(uint256 a, uint256 b) external view returns (uint256) {
        return matrix[0][1]; // works as 'expected'
    }
}