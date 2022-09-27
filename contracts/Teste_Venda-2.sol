//SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


contract venda{  
   
    function depositar(uint deposito) public pure{
        uint saldo;
        saldo += deposito;
    }       
     
    function pagar(uint preco , uint qde,uint saldo) public pure returns(uint){  
        uint totalPagar=preco*qde;                
        //require(saldo >= totalPagar, " Pagamento insuficiente"); 
              
        uint resto= saldo- totalPagar; 
        return resto;                
        
    }
}

