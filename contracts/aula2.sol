//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract aula2{
    uint32 ladoA=5;
    uint32 ladoB=10;
    uint32 ladoC=20;
    //event ResultadoPerimetro(uint32 resultado,uint32 cateto1,uint32 cateto2,uint32 hipotenusa);

    function Perimetro() public view returns(uint32){
        return ladoA+ladoB+ladoC;   /// PRINT///

    }
    function PerimetroLog() public view returns (uint32 ,uint32,uint32,uint32){
        uint32 resultadoPerimetro=ladoA+ladoB+ladoC;  /// variavel ///
        return (resultadoPerimetro,ladoA,ladoB,ladoC) ;   /// PRINT///
        //emit ResultadoPerimetro(resultadoPerimetro,ladoA,ladoB,ladoC);


    }
    function Volume() public view returns(uint32){
        return (ladoA*ladoB*ladoC)/2;
    }

    function Perimetropure (uint16 A,uint16 B, uint16 C) public pure returns(uint32){
        return A+B+C;
    }


    function setLados(uint16 LA,uint16 LB,  uint16 LC) public {
         ladoA=LA; 
         ladoB=LB;
         ladoC=LC;         
    }

    function setLadosObtemPerimetro(uint16 LA,uint16 LB, uint16 LC)public
    returns(uint32){
       setLados(LA,LB,LC);
        uint32 p = Perimetro();
        return p;
    }


     function setLadosPaga(uint16 LA,uint16 LB, uint16 LC)
        public payable{
            if (msg.value >= 130){
               ladoA=LA; 
               ladoB=LB;
               ladoC=LC;
            }
        } 



}


