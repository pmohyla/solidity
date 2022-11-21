//SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
import './interface.sol';



contract contratoPrincipal {
    IcontratoPai public qqcontrato;
    Iformula public qqformula;

    constructor(IcontratoPai interfaceContrato , Iformula parametros){
        qqcontrato = interfaceContrato;
        qqformula = parametros;
    }
    function chamarOlaMundo() public view returns(string memory){
        return qqcontrato.olaMundo();    
    }
    function calc_bascara(int32 a, int32 b, int32 c) public view returns(int32){
        return qqformula.calc_bascara(a,b,c);
    }
}