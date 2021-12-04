const { hexStripZeros } = require("ethers/lib/utils")

const main = async () => {
    // compile our contract and generate the necessary files we need to work with our contract under the artifacts
    const waveContractFactory = await hre.ethers.getContractFactory('WavePortal');
    //Hardhat will create a local Ethereum network for us, but just for this contract. Then, after the script completes it'll destroy that local network. So, every time you run the contract, it'll be a fresh blockchain
    const waveContract = await waveContractFactory.deploy();
    await waveContract.deployed();
    console.log("Contract deployed to:", waveContract.address);
};

const runMain = async () => {
    try {
        await main();
        process.exit(0);
    } catch (error) {
        console.log(error);
        process.exit(1);
    }
};

runMain();