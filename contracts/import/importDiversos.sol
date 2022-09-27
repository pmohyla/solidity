// DPDX-License-Identifier:MIT

pragma ^0.8.2;

import "./Listas_Numeros.sol";


contract impDiversos{
    using Listas_Numeros for uint256;

    uint[] numerosUSA;

    function salvaLista(uint numero)public {
        salvarN(numero);
    }
    function somaValores(uint A,uint B)public view returns(uint){
        for (uint i;i<length.numerosUSA; i++){
            lerN(numerosUSA[i]);
            uint soma= numerosUSA[i];
        } 
        return soma;            

    }

}