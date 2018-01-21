pragma solidity ^0.4.17;

contract Contract2 {
  string greeting = "this is Contract 2!!";
  function greet() constant returns (string) {
   return greeting;
  }
}
