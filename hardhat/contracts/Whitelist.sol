// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

// This contract allows for the whitelisting of a limited number of addresses
contract Whitelist {
    // Define the maximum number of whitelisted addresses
    uint8 public maxWhitelistedAddresses;

    // Mapping of addresses to booleans indicating whether they are whitelisted or not
    mapping(address => bool) public whitelistedAddresses;

    // Number of addresses currently whitelisted
    uint8 public numAddressesWhitelisted;

    // Constructor that sets the maximum number of whitelisted addresses
    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    /* Function that allows a caller to add their own address to the whitelist, 
    provided that the caller's address has not already been whitelisted and the 
    maximum number of whitelisted addresses has not been reached.*/
    function addAddressToWhitelist() public {
        // Check if the caller's address has already been whitelisted
        require(
            !whitelistedAddresses[msg.sender],
            "Sender has already been whitelisted"
        );

        // Check if the maximum number of whitelisted addresses has been reached
        require(
            numAddressesWhitelisted < maxWhitelistedAddresses,
            "More addresses cant be added, limit reached"
        );

        // If both checks pass, add the caller's address to the whitelist and increment the whitelist count
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}
