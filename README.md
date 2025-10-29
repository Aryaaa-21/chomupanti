🕹️ Dare Machine: Decentralized Truth/Dare DApp

🌟 Project Description
Welcome to the Dare Machine, a fun and decentralized application (DApp) built using Solidity on the Celo blockchain. This project serves as a beginner-friendly example of how smart contracts can manage shared, interactive content without needing a central server. It's a simple, community-driven version of the classic game, Truth or Dare!

✨ What It Does
The Dare Machine is a public, open-source contract that allows users to permanently submit "dares" to a shared pool. Once submitted, any user can call the contract to retrieve a random, community-sourced dare, making the game completely decentralized and transparent.
Community Content: All dares are contributed by the users themselves.
Fairness: The contract uses simple, on-chain pseudo-randomness to select the dares.
Transparency: Every dare submitted and the current count of dares is publicly verifiable.

🚀 Features
addDare(string memory _dare): Allows any user to pay a small gas fee to add a new dare to the global pool.
getRandomDare(): A free (view) function that retrieves a dare chosen randomly from the community's submissions.
getDareCount(): A free (view) function that returns the total number of dares currently stored in the contract.
Events: Emits an event (DareSubmitted) for easy off-chain tracking by a front-end application.

🛠️ Smart Contract Code
Below is the complete, self-contained Solidity code for the Dare Machine contract.
//paste your code


🔗 Deployed Smart Contract Link

You can view the deployed contract and all its transactions on the Celo Sepolia block explorer:

https://celo-sepolia.blockscout.com/tx/0x8cc78fde41607b6c7caf0f188a3664ceb91a4ba567eed628d924a8c7a6843d34
