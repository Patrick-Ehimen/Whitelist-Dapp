require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config({ path: ".env" });

const GOERLI_RPC_URL = process.env.GOERLI_RPC_URL;
const MATIC_RPC_URL = process.env.MATIC_RPC_URL;
const PRIVATE_KEY = process.env.PRIVATE_KEY;

module.exports = {
  defaultNetwork: "hardhat",
  solidity: "0.8.9",
  networks: {
    hardhat: {},
    goerli: {
      url: GOERLI_RPC_URL,
      accounts: [PRIVATE_KEY],
      chainId: 5,
    },
    mumbai: {
      url: MATIC_RPC_URL,
      accounts: [PRIVATE_KEY],
      chainId: 80001,
    },
  },
};
