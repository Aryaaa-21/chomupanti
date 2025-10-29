// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title DareMachine
 * @dev A simple, interactive contract for a decentralized Truth/Dare game.
 * Users can submit new dares and call a function to receive a random dare.
 */
contract DareMachine {
    // A dynamic array to hold all the dares submitted by users.
    string[] public dares;

    // An event to log when a new dare is successfully added to the array.
    event DareSubmitted(address indexed submitter, string dareContent);

    // The address of the person who deployed the contract.
    address public immutable owner;

    // The constructor runs only once upon deployment.
    constructor() {
        owner = msg.sender;
    }

    /**
     * @notice Allows any user to submit a new dare to the pool.
     * @param _dare The text of the new dare.
     */
    function addDare(string memory _dare) public {
        // Basic check: prevent empty submissions.
        require(bytes(_dare).length > 0, "Dare cannot be empty!");
        
        // Add the new dare to the end of the array.
        dares.push(_dare);
        
        // Emit an event so off-chain applications can track new dares.
        emit DareSubmitted(msg.sender, _dare);
    }

    /**
     * @notice Retrieves a random dare from the list.
     * @return A random dare string.
     * This is a 'view' function (free to call) and uses pseudo-randomness.
     */
    function getRandomDare() public view returns (string memory) {
        // We need at least one dare in the list to pick from.
        require(dares.length > 0, "No dares submitted yet! Be the first one.");

        // Simple Pseudo-Random Number Generation (Beginner level):
        // Uses properties of the current block and the caller's address to create a seed.
        // It's NOT cryptographically secure, but works for a fun demo.
        uint256 seed = uint256(
            keccak256(
                abi.encodePacked(
                    block.timestamp, // Time the block was created
                    msg.sender // The caller's address
                )
            )
        );

        // Calculate the index using the modulo operator (%)
        // to ensure the index is always within the bounds of the array length.
        uint256 randomIndex = seed % dares.length;

        return dares[randomIndex];
    }

    /**
     * @notice Returns the total number of dares available.
     * @return The total count of dares.
     */
    function getDareCount() public view returns (uint256) {
        return dares.length;
    }
}
