# Whitelist Contract

This is a Solidity contract for whitelisting addresses. It is released under the Unlicense.

## Features

- Defines the maximum number of addresses that can be whitelisted
- Mapping of addresses to booleans indicating whether they are whitelisted or not
- Number of addresses currently whitelisted
- Constructor that sets the maximum number of whitelisted addresses
- Function that allows a caller to add their own address to the whitelist, provided that the caller's address has not already been whitelisted and the maximum number of whitelisted addresses has not been reached.

# Hardhat

Hardhat is a command-line tool for managing Ethereum development. It helps you set up, test, and deploy your smart contracts on Ethereum networks.

## Installation

Install Hardhat with npm:

```bash
$ npm install hardhat --save-dev
```

You will also need to install the `@nomicfoundation/hardhat-toolbox` and `dotenv` packages as dependencies.

```bash
$ npm install @nomicfoundation/hardhat-toolbox dotenv --save-dev
```

## Usage

To use Hardhat, you will need to create a configuration file in your project directory. This file should be named `hardhat.config.js`. You can find more information about configuring Hardhat [here](https://docs.nomiclabs.io/hardhat/configuration/).

Once your configuration is set up, you can run Hardhat commands from the command line:

```bash
$ npx hardhat <command> [options]
```

# Nomic Foundation Hardhat Toolbox

This is a configuration file for the Nomic Foundation Hardhat Toolbox. It includes the necessary code to connect to the Goerli and Mumbai test networks, as well as a private key for authentication.

## Requirements

- [@nomicfoundation/hardhat-toolbox](https://www.npmjs.com/package/@nomicfoundation/hardhat-toolbox)
- [dotenv](https://www.npmjs.com/package/dotenv)
- Environment variables for `GOERLI_RPC_URL`, `MATIC_RPC_URL`, and `PRIVATE_KEY`

## Configuration

The configuration includes the following settings:

- Default network: `hardhat`
- Solidity version: `0.8.9`
- Network settings for Goerli, Mumbai, and Hardhat networks
  - URL for Goerli and Mumbai networks
  - Accounts array with private key for authentication
  - Chain ID for Goerli (5) and Mumbai (80001) networks
