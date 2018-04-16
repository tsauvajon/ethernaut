The problem with this contract is that it doesn't check if you have a sufficient balnce to transfer funds.

Therefore, you can just send a huge amount of tokens (e.g. 100000) from a contract with a balance of 0.

I generated the .abi with solc: `solc --abi sacrifice.sol -o .`, and sent the transactions with MyEtherWallet.

___

Another easier solution is to underflow the balance.  
Try to transfer 21 tokens to anyone but yourself; since balances are unsigned integers, the balance of each account will always be positive.
Therefore, 20-21 = 2^256 - 1. That's very large.
