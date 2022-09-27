//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

//  CONTRATO ABAIXO É EQUIVALENTE A  'LIBRARY', PARA SER IMPORTADO .

contract contract_import{
    string public texto = "Sao Paulo , 05 de abril de 2022 - Texto de hoje : Heranca Filho";
    
    function somatorio (int32 a, int32 b) public pure returns(int32){
        return a+b;    
    }
    function somente_contractimport() internal pure returns (string memory){
        return "essa funcao somente pode ser chamada dentro do contrato contract_import";
    }
    function chamar_funcao_interna() public  pure returns(string memory){
        return somente_contractimport();
    }
    function soma_oculta(int32 x, int32 y, int32 z) private pure returns(int32){
        return x+y+z;  
    }
    function chamar_soma_oculta(int32 x,int32 y) public  pure returns(int32){
        return soma_oculta(x,y, 27);
    }  


}