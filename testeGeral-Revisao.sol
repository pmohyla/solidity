//SPDX-License-Identifier:MIT

pragma solidity ^0.8.2;

contract teste{
    mapping(string => uint) dict;  


    function adDados(string calldata cidade, uint pessoas) external {
        dict[cidade] += pessoas;
    }          ////  "CALDATA " E UMA ESPECIE DE STRING , COMO MEMORY .
                ////  cidade é a String do mapping e pessoas é o uint !!

    function Ler(string calldata ) external pure {
        string memory cidadeleitura;
        //uint pessoas;        
        //return (cidadeleitura, pessoas);        
    }         
}
contract dicionario{
    mapping(string =>uint) saldos;
    uint valor;
    
    function depositar() external {
        saldos[nome] += valor;
    }
    function ler_Deposito() external view returns(uint256){
        return (saldos[valor]);
}
 


 
contract tsteJogo{
    mapping (address => uint[]) accpontos;

    function salvar(address dono , uint ponto) private{         
         accpontos[dono].push(ponto);
         
     }
    function chamarFsalvar(uint pontoFsalvar) public {
         salvar(msg.sender , pontoFsalvar);
     }
    function leitura() external view returns(uint){
         uint somaPontos;
         for (uint i;
            i<accpontos[msg.sender].length ;
            i++){
            somaPontos+= accpontos[msg.sender][i];

         }
        return somaPontos;
    }
}     
        


contract testeTexto{
    string redacao=" hoje esta dia com Sol , e temperatura 25 G";
    string genial = " sera que e PURO? ";

    
    function ler() public pure returns(string memory){
        
        return " Lua cheia";
    }

    function escrever() public pure returns(string memory){
        return "verao de 50 g na europa";
    }
    function GERAL() public view returns(string memory){
        return genial;
    }       
}


contract calculo{
    uint32 numeroA= 5500;
    uint32 numeroB= 80;
    uint32 constante = 2;

    function multSoma() public view returns(uint32){
        return ( (numeroA + numeroB)/constante) ;
    }
    function Pot() public view returns(uint32){
        return numeroB ** 2;
    }
    function pura(uint32 nA, uint32 K ) public pure returns(uint32){
        return nA * K ;
    }
    function pura2(uint32 nB, uint32 KK ) public pure returns(uint32){       
        return nB*KK;
    }
    
        
    function Pcalc(uint32 frente, uint32 fundo, uint32 preco ) public payable returns(uint32){
        uint32 conta;
        if (msg.value > 500){
            conta = (frente * fundo)/preco;
        }
        return conta;     
    }     
}