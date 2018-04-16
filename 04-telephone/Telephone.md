You can change the ownership only if tx.origin != msg.sender.

This happens in a chain call: User->Contract->Telephone, inside the Telephone
contract, the origin will be the User and the sender will be the
ClaimTelephone contract.

Same procedure as FlipCoin to call the contract.
