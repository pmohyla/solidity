//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

import "./import/contractimport.sol";

contract importcontract is contract_import{

    function teste_chamar_somaoculta(int32 x,int32 y) public pure returns(int32){
        return chamar_soma_oculta(x,y);
    }
     function teste_chamar_funcao_interna() public  pure returns(string memory){
        return somente_contractimport();
    } 

} 







