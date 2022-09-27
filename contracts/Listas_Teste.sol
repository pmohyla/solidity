//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract listas {
    string[] nomes;

    function salvar(string memory _nome) external{    
       nomes.push(_nome);
    }

    function ler(uint _position) external view returns(string memory){
        return nomes[_position];
    }
    function atualizar(uint _position ,string memory novoNome)  external{
        nomes[_position] = novoNome;
    }   
    function deletar(uint _position) external{
        delete nomes[_position];
    }
}