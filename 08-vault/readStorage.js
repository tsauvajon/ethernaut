import Web3 from 'web3';

// The contract's address
const address = '0x875217879371e5cabaf52785460969492756ce55';
// Run local ethereum node on localhost:8546
const web3 = new Web3(new Web3.providers.WebsocketProvider("ws://localhost:8546"));
// Read the storage at the contract's address, in slot 1 (password)
const password = web3.eth.getStorageAt(address, 1);
// Display the password as binary
// "0x412076657279207374726f6e67207365637265742070617373776f7264203a29"
console.log(`The password is ${password}`);
// Display the password as text
// "A very strong secret password :)"
console.log(`In text: ${web3.toAscii(password)}`);

/*
Now that we have the password, we can unlock the vault:
await contract.unlock("0x412076657279207374726f6e67207365637265742070617373776f7264203a29")
*/
