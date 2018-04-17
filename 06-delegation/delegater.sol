pragma solidity ^0.4.18;

contract Delegater {
    function miguel () public pure returns (bytes4) {
        return bytes4(keccak256("pwn()"));
    }
}
