// SPDX-License-Identifier: MIT;

pragma solidity ^0.8.2;

/*contract IfTeste{
    uint32 a;
    uint32 b;    

    function soma( uint32 a, uint32 b) public pure returns(uint32){
        uint32 soma = a+b;        
        return soma;
    }   
          
     
    function duvida(uint32 soma) external view returns(bool){
        if (soma >= 200){
            return (true);        
        }
        return false;        
    }
}*/


contract IfDono{  
    

    function soma10(uint32 X, uint32 Y) public pure returns(uint32 ){
        uint32 s=X+Y;
        if( s >= 250)
        return s;
    }
    uint32[] caderno;
    function salvar(uint32 vl) external {
        caderno.push(vl);
    }   

    function verif( uint32 n) external view returns (bool){
        for (uint i; i< caderno.length; i++){        
            //caderno.push(n);
           if (caderno[i] >= n ){
             return true;
            }
            else {
            return false;        
            }
            //return caderno[posicao];  
        }
        
        
    }
        
}     
            
    


