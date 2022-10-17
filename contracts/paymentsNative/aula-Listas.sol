// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

/*
contract listas{

    uint[2][3] public numeros ;

    function add(uint x, uint y,uint valor)external {        
        numeros[x][y]= valor;
    }
}
*/
contract dicionarios{
    mapping (string => mapping (uint => produto)) public pedidosCompras;

    struct produto{
        string nomeProduto;
        uint valorProduto;
    }
    
    function add(string calldata nomeCliente, 
                 uint IDpedidoCompra, 
                 string calldata nomeProduto,
                 uint valorProduto)
                                                external {
        pedidosCompras[nomeCliente][IDpedidoCompra] = produto(nomeProduto,valorProduto);

    }

}