pragma solidity 0.8.7;

contract Parent {

    uint256 private a;
    uint256 internal b = 2;

    function setBFromParent(uint256 newValue) external {
        b = newValue;
    }

    function getBfromParent() external view returns (uint256) {
        return b;
    }
}

contract Child is Parent {
    
    function setBFromChild(uint256 newValue) external {
        b = newValue;
    }

    function getBFromChild() external view returns (uint256) {
        return b;
    }
}

contract Child2 is Parent {
    
    function setBFromChild(uint256 newValue) external {
        b = newValue;
    }

    function getBFromChild() external view returns (uint256) {
        return b;
    }
}