pragma solidity ^0.4.19;


contract HelloWorld {
  //Begin: state variables
  address private creator;
  address private lastCaller;
  string private message;
  uint private totalGas;
  //End: state variables

  //Begin: constructor
  function HelloWorld() public {
    /*
      We can use the special variable `tx` which gives us information
      about the current transaction.

      `tx.origin` returns the sender of the transaction.
      `tx.gasprice` returns how much we pay for the transaction
    */
    creator = tx.origin;
    totalGas = tx.gasprice;
    message = 'hello world';
  }
  //End: constructor

  //Begin: getters
  function getMessage() view public returns(string) {
    return message;
  }

  function getLastCaller() view public returns(address) {
    return lastCaller;
  }

  function getCreator() view public returns(address) {
    return creator;
  }

  function getTotalGas() view public returns(uint) {
    return totalGas;
  }
  //End: getters

  //Being: setters
  function setMessage(string newMessage) public {
    message = newMessage;
    lastCaller = tx.origin;
    totalGas += tx.gasprice;
  }
  //End: setters
}
