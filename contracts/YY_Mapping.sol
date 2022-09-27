//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract mappings{
    mapping(address=>uint) saldos;
    mapping(address => uint[]) pontuacao;


    function depositar() external payable{
        saldos[msg.sender] += msg.value;
    }
    function ler_Deposito() external view returns(uint256){
        return (saldos[msg.sender]);
    }


    function ganharpontos(uint ponto) external{
        pontuacao[msg.sender].push(ponto);        
    }
    function ler_Pontos() external view returns(uint){
        uint somaPontos;
        for(uint i; i< pontuacao[msg.sender].length; i++){
            somaPontos += pontuacao[msg.sender][i];
    }
        return somaPontos;        
    }        
    
}
contract lista{
    uint lista;

    function listar(uint ponto) external{
       lista.push(ponto);       
    }
    function ler_Lista() external view returns(uint){
        uint somaPontos;
        for(uint i; i< 3 ; i++){
            somaPontos += lista[i];
    }
        return somaPontos;
    }

}