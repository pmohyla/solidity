//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;


contract aula3{
    uint16 W =50;
    uint16 R =9;    
    address public dono ;
    
    constructor (){
        dono=msg.sender;
    }
    modifier apenasDono{
        require (dono == msg.sender , "somente executada pelo dono");
        _ ;
    }
    function soma51 () public apenasDono view returns (uint32){
        uint32 S=W+R;
        require (S >=  51 , "valor invalido");        
        return S;
    }

    function soma10(uint32 X, uint32 Y) public pure returns(uint32){
        uint32 s=X+Y;
        require (s>=480, "valor invalido");
        return s;
    } 
    function proprietario( uint fator)public payable returns(uint){
        uint e = msg.value * fator;
        return e;
    }
}

