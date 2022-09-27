//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract Hellow {
    string frase = "today is happy easter day in August";

    function hellow () public pure returns(string memory){
        return ( " HELLOW WORLD - GOOD MORNING FOR EVERYBODY"" WE ARE IN MIAMI ");
    }    
    function copiarFrase() public view returns(string memory){
        return frase;
    }    
}


contract variaveis{
    string palavra;
    function qualteuNome(string calldata nome_pavel) external {
        palavra = nome_pavel;
    }
}
