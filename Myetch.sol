pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Myetch is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Myetch(address _owner)  UpgradeableToken(_owner) {
    name = "Myetch";
    symbol = "mthy";
    totalSupply = 25000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}