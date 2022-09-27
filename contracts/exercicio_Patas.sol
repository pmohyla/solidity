//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract exercicio_Patas{
    string duaspatas = "pato , galinha, ganso";
    string quatropatas = " gato, tigre , girafa";

    function quantasPatas() public pure returns( string memory){
        return "resp =  quantas patas ? Sao 2 ou 4 patas ?";
    }
    
    function resposta2() public view returns (string memory){
        return  duaspatas ;
    }
    function resposta4() public view returns (string memory){
         return quatropatas;
    }
}



contract resumido{   
    string duaspatas = "pato , galinha, ganso";     
    string quatropatas = " gato, tigre , girafa";

    function quant_patas(uint8 patas ) public view  returns (string memory){
        if ( patas == 2  ) {
            return duaspatas ;            
        }else if ( patas == 4 ){
            return quatropatas ;            
        }else {
            return ( ' ERRO - escolher 2 ou 4 patas ');

        }

    }

}       

        


        
    
