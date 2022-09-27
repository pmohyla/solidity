//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract mappings{
    mapping(address=>uint) saldos;
    mapping(address => uint[]) pontuacao;

    function depositar() external  {
        uint valor;
        saldos[msg.sender] += valor;
    }
    function ler_Deposito() external view returns(uint256){
        return (saldos[msg.sender]);
    }
}