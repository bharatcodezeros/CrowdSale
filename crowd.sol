// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract USDC is ERC20{

    uint256 public maxSupply = 10000*10**9;
    uint256 public intialSupply;

    constructor() ERC20("USDC","USDC_token"){
        _mint(msg.sender,5000*10**9);
        intialSupply = 5000*10**9;

    }

    function mint(address account,uint amount)  public {
            require(maxSupply > intialSupply) ;
            _mint(account,amount);
            intialSupply = intialSupply + amount;
    }

    function pay() payable public{
        
    }

}
