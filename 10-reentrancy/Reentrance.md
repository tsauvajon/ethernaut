```sol
if(msg.sender.call.value(_amount)()) {
  _amount;
}
balances[msg.sender] -= _amount;
```

If the `msg.sender` is a contract, it will call the fallback function.  
The balance deduction is made after the call.  
Therefore, if this code is called in the fallback function of the sender, it will cause a recursion, sending the value multiple times before reducing the sender's balance.
