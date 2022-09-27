//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;
contract DiversosText{
    string avisos="Mar com tormenta e perigo para navegantes";
    string cautelas="navegar apenas navios com GG Toneladas";

    function readingP()external pure returns(string memory){
        return "avisos";      
    }
    function readingW()external view returns(string memory){
        return cautelas;
    }
    function readingO(string memory)external returns(string memory){
        return "";

    }




    uint valor1 = 2300;
    uint valor2 = 5;
    uint valor3 = 10;

    function operacao() external returns(uint){
        uint resultado;
        resultado = ((valor1 * valor2)/valor3);
        return resultado;
    }
    function operacaoW()external view returns(uint){
        uint resultado;
        resultado = ((valor1 * valor2)/valor3);
        return resultado;
    }
    function operacaoP() external pure returns(uint){
        uint val1=500;
        uint val2=9;
        uint result;
        result= val1 + val2;
        return result;
    }
    function operacaoA(uint A, uint B) external pure returns(uint){ 
        uint result= A*B;       
        return result;
    }
}
