//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract ForIf{

    string[] pessoas;

    function salvarnomes(string memory nome) external{
        pessoas.push(nome);        
    }
    function pesquisar(string memory nome) external view returns(bool){
        for (uint i; i<pessoas.length; i++){
            if(keccak256(abi.encodePacked(pessoas[i] )) == keccak256(abi.encodePacked(nome))){
                return true;        
            }
        }
        return false;           
        
    }    
}





