//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;


contract tsteJogo{
    mapping (address => uint[]) accpontos;

    function salvar(address dono , uint ponto) private {         
         accpontos[dono].push(ponto);         
     }

    function chamarFsalvar(uint pontoFsalvar) public {
         salvar(msg.sender , pontoFsalvar);
     }
     
    function leitura() external view returns(uint){
         uint somaPontos;
         for (uint i;
            i<accpontos[msg.sender].length ;
            i++){
            somaPontos+= accpontos[msg.sender][i];

         }
        return somaPontos;
    }
}     