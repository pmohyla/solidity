//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;      
            

 contract dicionario{
    mapping(string =>uint[]) escore;  
    string nome; 
   

    
    function depositar(uint valor) external{
        escore[nome].push(valor);        
    }
    function ler_Deposito() external view returns(uint){
        uint somaPontos;
        for (uint i; i<2 ; i++){
            somaPontos += escore[nome][i];
    }
        return somaPontos;
    }        
    
 }     

contract listao{
    uint[] listao;

    function add(uint pontos) external {
        listao.push(pontos);
    }
    function lerListao() external view returns(bool){
        uint accPontos;
        for (uint i; i< listao.length; i++){
            accPontos += listao[i];  
            if(accPontos >= 120 ){
                return true;
            }          
        }
        return false;
    }    
    
}
    

 