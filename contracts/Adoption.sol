//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Adoption{
    address public owner;
    address[16] public adopters;

    constructor(){
        owner = msg.sender; 
    }

    // Adopting a cat.
    function adopt(uint petId) public returns(uint){
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

    // Retrieving the adopters.
    function getAdopters() public view returns(address[16] memory){
        return adopters;
    }


}