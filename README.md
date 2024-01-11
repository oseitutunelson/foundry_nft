
 ## NFT Smart Contract

This smart contract allows you to deploy an NFT contract and mint NFTs on the Sepolia test network.

### Prerequisites

- Install Forge: `brew install --cask foundry`
- Create a `.env` file with the following environment variables:
  - `Private_key`: Your private key
  - `SEPOLIA_API_KEY`: Your Sepolia API key
  - `ETHERSCAN_API`: Your Etherscan API key

### Deploy the Contract

To deploy the contract, run the following command:

```
make deploy
```

This will compile the contract and deploy it to the Sepolia test network. The contract address will be printed to the console.

### Mint an NFT

To mint an NFT, run the following command:

```
make mint
```

This will mint an NFT on the contract you deployed. The token ID of the minted NFT will be printed to the console.

### Code Explanation

The `DeployNft.s.sol` script deploys the NFT contract to the Sepolia test network. The `MintNftOnContract` script mints an NFT on the contract.

The `NETWORK_ARGS` variable is used to specify the network to which the contract should be deployed. The `--network sepolia` flag specifies that the contract should be deployed to the Sepolia test network. The `--rpc-url` flag specifies the RPC URL of the Sepolia test network. The `--private-key` flag specifies the private key of the account that will deploy the contract. The `--broadcast` flag specifies that the transaction should be broadcast to the network.

The `deploy` target uses the `forge script` command to run the `DeployNft.s.sol` script. The `mint` target uses the `forge script` command to run the `MintNftOnContract` script.

### Conclusion

This smart contract allows you to easily deploy an NFT contract and mint NFTs on the Sepolia test network.
