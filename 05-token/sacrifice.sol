pragma solidity ^0.4.18;

contract Token {
    function transfer(address _to, uint _value) public returns (bool);
}

contract Sacrifice {
    function inventTokens(address _token, address _recipient, uint _value) public {
        Token tk = Token(_token);
        tk.transfer(_recipient, _value);
    }
}
