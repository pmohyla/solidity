//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract listaNumeros{
    uint[] numeros;           //  CRIACAO DA LISTA numeros : TEM [] que indica a lista.

    function salvarN(uint numero) external{
        numeros.push(numero);    
    }
    function lerN( uint position ) external view returns(uint){
        return numeros[position];
    }
    function alterN(uint _position , uint n) external  returns(uint){
        return numeros[_position]= n;
    }
    function deleteN(uint _position) external {
        delete numeros[_position];
    }

    
}