//SPDX-License-Identifier : UNLICENSED
pragma solidity ^0.8.0;

contract Transactions {
   uint256 TransactionCounter ;
    event transfer(address from,address receiver,uint amount, string message,uint256 timestamp,string keyword);
    struct TransferStruct{
        address sender ;
        address receiver ;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }
    // array of transactions
    TransferStruct[] transactions;
    function addToBlockChain(address payable receiver, uint amount, string memory message, string memory keyword)public{
          TransactionCounter+=1;
        transactions.push(TransferStruct(msg.sender,receiver,amount,message,block.timestamp,keyword));
           emit transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }
    function getAllTransactions() public view returns(TransferStruct[] memory){
              return transactions;
    }
    function getTransactionCount() public view returns(uint256){
           return TransactionCounter;
    }
}
