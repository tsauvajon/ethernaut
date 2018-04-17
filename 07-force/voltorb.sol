pragma solidity ^0.4.18;

contract Voltorb {
    function itsSuperEffective (address _to) public {
        selfdestruct(_to);
    }

    function () public payable {}
}
