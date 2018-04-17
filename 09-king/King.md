Taking the kingship is easy: just pay 1 ether to the King contract.
`king.transfer(msg.value);` is called before changing the king.
Therefore, if it fails, the fallback function will be locked forever.

We can exploit this by intentionally make the `king.transfer` call fail every time.
Transfering to a contract will fail if this contract doesn't have a fallback method (or if it isn't `payable`).

All we have to do is take the kingship with a contract without a fallback method.

