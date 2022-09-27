/// SPDX- license - identifier :  MIT

pragma solidity ^0.8.2 ;

contract estrategias{
    uint32 dia = 30;
    uint32 mes = 12;
    uint32 ano =5;

    function idade () public view returns(uint32 ,uint32, uint32, uint32){
        uint32 idadedias = ano*mes*dia ;
        return (idadedias, ano, mes, dia );
        
    }
}