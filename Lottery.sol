// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Lottery {
    //  data types
    address public manager;
    address payable[] public players;
    
    constructor(){
     manager = msg.sender;
    }

   function enter() public payable{
        require(msg.value > 0.01 ether);
        players.push(payable(msg.sender));
    }
}
