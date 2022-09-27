//SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

/*
contract teste2{  
    uint dado= 25000;       
    
    function lerdado() public view returns(uint){        
        return dado;
    }
    function lerpop(uint pop) public pure returns (uint){
        return pop;
    }
    function lerPagam(uint pgto) external payable returns(uint){
        uint moeda=2*pgto;
        return moeda ;
    }
    function pagar() external payable returns(uint){
        uint totalPago=msg.value;
        return totalPago;
    }         
}
*/

contract aula3{
    uint16 W =200;
    uint16 R =9;    
    address public dono ;
    
    //constructor (){
    //    dono=msg.sender;
    //}
    
    //modifier apenasDono{
    //    require (dono == msg.sender , "somente executada pelo dono");
    //    _ ;
    //}
    function soma51 () public view returns (uint32){
        uint32 S=W+R;
        require (S >=  51 , "valor invalido");        
        return S;
    }

    function soma10(uint32 X, uint32 Y) public pure returns(uint32){
        uint32 s=X+Y;
        require (s>=480, "valor invalido");
        return s;
    }
    function condicao() public view returns(uint){
        uint expon= R**W;
        require( expon > 70 , "trocar variaveis");
        return expon;
    }
    function bola() public view returns(string memory){
        uint expon = R*W;
        require(expon > 100 , "verificar variaveis");
        return ("OK");
    }

}
contract IF{
       

    function condicao (uint valor2, uint valor1,uint central) public pure returns(string memory){
        require ( valor2 > central ||  central > valor1, "valor invalido");
        return " resultado OK";
    }
                       
}       

  

    


         
          

