// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.2;

contract exercico_mutability{
    string texto_padrao = " Funcao do tipo view ";
    string  texto = " Texto oculto ";
    
    function exibe_texto_padrao(bool qq) external view returns(string memory){        
        if (qq == true){             
            return texto_padrao;
        }else {
            return texto ;
        }       
    }    

    function exibir_texto() external pure returns(string memory){        
        string memory texto2 = " A,B,C";
        return texto2;
    }
}
