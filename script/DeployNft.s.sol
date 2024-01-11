//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {Script} from 'forge-std/Script.sol';
import {NFT} from '../src/nft.sol';

contract DeployNft is Script{
    function run() external returns (NFT){
        vm.startBroadcast();
        NFT basicNft = new NFT();
        vm.stopBroadcast();
        return basicNft;
    }
}