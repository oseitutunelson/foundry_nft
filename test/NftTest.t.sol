//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Test} from 'forge-std/Test.sol';
import {DeployNft} from '../script/DeployNft.s.sol';
import {NFT} from '../src/nft.sol' ;

contract NftTest is Test{
    DeployNft public deployer;
    NFT public nft;
    string public constant PUG = "https://ipfs.io/ipfs/QmSsYRx3LpDAb1GZQm7zZ1AuHZjfbPkD6J7s9r41xu1mf8?filename=pugg.png";
    address public USER = makeAddr('user');

    function setUp() public{
        deployer = new DeployNft();
        nft = deployer.run();
    }

    function testName() public view{
        string memory expected = "BasicNft";
        string memory actual = nft.name();

        assert(keccak256(abi.encodePacked(expected)) == keccak256(abi.encodePacked(actual)));
    }

    function testCanMintAndHaveBalance() public{
       vm.prank(USER);
       nft.mintNFT(PUG);
       assertEq(keccak256(abi.encodePacked(nft.tokenURI(0))),keccak256(abi.encodePacked(PUG)));
    }
}