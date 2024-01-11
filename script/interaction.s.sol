//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Script} from 'forge-std/Script.sol';
import {NFT} from '../src/nft.sol';
import {DevOpsTools} from 'foundry-devops/src/DevOpsTools.sol';

contract MintNftOnContract is Script{
    string public constant PUG = "https://ipfs.io/ipfs/QmSsYRx3LpDAb1GZQm7zZ1AuHZjfbPkD6J7s9r41xu1mf8?filename=pugg.png";

    function run() external{
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("NFT",block.chainid);
        mintNftonContract(mostRecentlyDeployed);
    }

    function mintNftonContract(address contractAddress) public{
        vm.startBroadcast();
        NFT(contractAddress).mintNFT(PUG);
        vm.stopBroadcast();
    }
}