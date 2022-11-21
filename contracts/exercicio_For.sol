//SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract exercicio_For{
    uint[] lista;
    
    function looping(uint valor) external {          
        //for (uint i; i < lista.length ; i++)
            lista.push(valor);
                  
        
    }

    function getLista(uint pos)external view returns(uint){
        return lista[pos];
    }
    function verificar() external view returns(uint){
        uint maiorNumero = 0;
        for (uint i; i<lista.length ; i++){
            if(lista[i] > maiorNumero ){
               maiorNumero = lista[i]; 
            }
        }                       
        return maiorNumero;
    }
}   
        
            
        
       
     


