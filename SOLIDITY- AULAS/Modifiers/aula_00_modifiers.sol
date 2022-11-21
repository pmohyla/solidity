// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract modifiersLocal{
    address public dono;
    string public console;
    mapping(address => bool)public seloQualidade;

    constructor(){      
      dono = msg.sender;
    }
    modifier apenasDono(){ 
        //trata-se de um Testador de codigo 
        require (msg.sender == dono , "nao e o dono");
        _;    
    }

    function emitirSelo(address beneficiario) virtual public apenasDono returns(string memory){
        seloQualidade[beneficiario] = true;
        console = "seloQualidade emitido com sucesso"; 
        return console;
        
    }
}
import "github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Context.sol";


contract modifierOwenable is modifiersLocal, Ownable{
   function emitirSelo(address beneficiario) public override  onlyOwner returns(string memory){
        seloQualidade[beneficiario] = true;
        console = "seloQualidade emitido com sucesso";
        return console;
    }
}
    
