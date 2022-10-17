//SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
import './interface.sol';

contract contratoPrincipal {
    IcontratoPai public contratoPai;
    constructor(IcontratoPai interfaceContrato){
        contratoPai = interfaceContrato;
    }
    function chamarOlaMundo() public view returns(string memory){
        return contratoPai.olaMundo();
    }
}