require("@nomiclabs/hardhat-waffle");
module.exports = {
  solidity: "0.8.4",
  networks :{
    ropsten:{
      url:'https://eth-ropsten.alchemyapi.io/v2/bWsDPABZlXVPYvwaiMYIlkOkSMGmUCdH',
      accounts:['59307955cb39ea86b5121450f6a21fb0055f33d6bc19c4dcab48139b0e5b478d']
    }
  }
};
