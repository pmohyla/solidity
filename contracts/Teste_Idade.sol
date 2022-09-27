///SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract estrategias{   
    //uint32 dia = 1;
    //uint32 mes = 1;
    //uint32 ano = 25;

    function idade (uint dia,uint mes, uint ano) public pure returns(uint ){
        uint idadedias =( ano*360+mes*30 + dia) ;
        return (idadedias );
        
    }
}