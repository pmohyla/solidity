//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract aula1{
    string Carta=" Sao Paulo , terra da garoa. Data : 26 de janeiro de 2022  , Previsao do tempo para o mes : Sol ";

function helloworld() pure public returns(string memory){
    return "hello world - have a good time and peace ";    
}
function texto() public view returns(string memory){
    return Carta;
}
}