//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0 ;

contract Testeaula2{
    uint32 ladoA= 15;
    uint32 ladoB=100;
    uint32 ladoC=500;
    function PLog() public view returns(uint32,uint32,uint32){ 
        uint32 P=ladoA+ladoB+ladoC;
        return (ladoA,ladoB,ladoC);
    }
    
    function PSet (uint32 A,uint32 B,uint32 C) public{
        A=ladoA;
        B=ladoB;
        C=ladoC;
        
        return A+B+C;
    }
    function PPure(uint32 A,uint32 B, uint32 C) public returns(uint32){
        return A+B+C;
    }
}
*/ 

/*contract testeIf{
function validateRxpressio() public pure returns(string memory){
    uint32 populacao = 3000;
    bool expression = (populacao > 20 && populacao < 1000 ) ||(populacao == 3000) ;
    if(expression){
        return  "Expression is true" ;
    }else {
        return "Expression is false ";
    }
}
}*/

contract visibility{
    string nome="pavel";
    
    function qualNomeP() public view returns(string memory){
        return nome;
    }    
    function qualNomeE() external view returns(string memory){
        return nome;
    }
    function qualNomeI() internal view returns(string memory){
        return "internal PAVEL";
    }     

}contract B is visibility{
    function repete() public view returns(string memory){
        return qualNomeI();
    }
}
