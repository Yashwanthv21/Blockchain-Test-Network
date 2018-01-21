pragma solidity ^0.4.17;

contract HelloWorld {
  string greeting = "Contract 2 works!!";
  function greet() constant returns (string) {
   return greeting;
  }
}
