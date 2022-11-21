// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract bloqueioPorTempo {
    uint256 public tempoBloqueado;
    uint256 public bloqueio ;
    constructor(uint256 tsBloqueio) {
        bloqueio = tsBloqueio;
        tempoBloqueado = block.timestamp + bloqueio;
     

    }
    modifier validaBloqueio {
        require(block.timestamp>tempoBloqueado,"BTP: Recurso ainda bloqueado");
        _;
    }
    function exibeTimestamp() public view validaBloqueio returns (uint256) {
        
        return block.timestamp;
    }
}