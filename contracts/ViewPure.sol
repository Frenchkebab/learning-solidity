pragma solidity 0.8.7;

contract ViewPure {

    uint256 a = 0;

    function getA() public view returns (uint256) {
        return a;
    }

    // this function does not access state
    function max(uint256 x, uint256 y) public pure returns (uint256) {
        return x > y ? x : y;
    }
}