pragma solidity ^0.4.15;

import 'zeppelin-solidity/contracts/token/StandardToken.sol';


contract Token is StandardToken {

    function Token() public {
        balances[msg.sender] = total;
    }

    function burn() public {
        totalSupply = totalSupply.sub(balances[msg.sender]);
        balances[msg.sender] = 0;
    }

    uint public constant total = uint(1e9) * (uint(10) ** uint(decimals));

    string public constant name = "Workshop token";
    string public constant symbol = "WSH";
    uint8 public constant decimals = 18;
}
