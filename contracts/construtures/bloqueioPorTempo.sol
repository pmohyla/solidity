// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract bloqueioPorTempo {
    uint256 public tempoBloqueado;
    uint256 public bloqueio = 20;
    constructor() {
        tempoBloqueado = block.timestamp + bloqueio;
    }
    modifier validaBloqueio {
        require(block.timestamp>tempoBloqueado,"BTP: Recurso ainda bloqueado");
        _;
    }
    function exibeTimestamp() public pure validaBloqueio returns () {
        return block.timestamp;
    }
}