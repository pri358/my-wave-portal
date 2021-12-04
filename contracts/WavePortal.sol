// SPDX-License-Identifier: UNLICENSED

// pragma tells the compiler which solidity version to use 
pragma solidity ^0.8.4;

// for console logs given by HardHat
import "hardhat/console.sol";

// just like classes in java 
contract WavePortal {
    //state variable: permanently stored in contact storage
    uint256 totalWaves;

    constructor() {
        console.log("Hey, I'm new here!!");
    }

    // public keyword makes function publically available on the blockchain
    function wave() public {
        totalWaves += 1;
        // msg.sender: wallet address of the person who called the function
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}
