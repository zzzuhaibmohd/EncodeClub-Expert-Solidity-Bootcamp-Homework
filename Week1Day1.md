
# EncodeClub-Expert-Solidity-Bootcamp-Homework-Week1

## What information is held for an Ethereum account ?
An Ethereum account holds the inforamtion of the following four fields.

1. nonce - A scalar value equal to the number of transactions sent from this address.
2. balance - A scalar value equal to the number of Wei owned by this address.
3. storageRoot - the root node of a Merkle Patricia tree that encodes the storage contents of the account.
4. codeHash - the code that gets executed should this address receive a message call.

## Where is the full Ethereum state held ?
A full/archival node store all transactions and resulting state transitions for all block heights in a local data store. It allows clients to query the state of the 
blockchain at any time in the past without having to re-calculate everything from the beginning. Data such as account balances are not stored directly in the blocks 
of the Ethereum blockchain. Only the root node hashes of the transaction trie, state trie and receipts trie are stored directly in the blockchain. 

## What is a replay attack ? which 2 pieces of information can prevent it ?
A replay attack means taking a transaction on a  blockchain and maliciously or fraudulently repeating it on the same or another blockchain.
Example: Granting approval or withdraw funds.

One can easily prevent reaply attacks by adding nonce, chainId to the signature.

## How do we know who called a view function ?
For view functions, the message is not signed and so the value of meg.sender cannot be verified.
