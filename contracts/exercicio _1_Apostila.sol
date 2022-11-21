//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract Marketplace{          
    int price = 1055;
    int carteira = 900;
    event Compras(address buyer , uint price)

    function saldo()external view returns(int){
        int saldo;
        saldo = carteira - price ;
        return saldo;      
        
    }
    function verdade() external view returns(bool){
        if( carteira > price){
            return true;
        }
        if (carteira < price){
            return false;
        }
    }
}
contract Market2{
    address public seller;
    address public buyer;
    mapping(address => uint)public saldos;
    event Lista(address seller, uint price);
    event PurchasedItem(address seller, address buyer,uint price);

    enum StateType{
        itemAvailable , itemPurchased
    }
    StateType public State;

    constructor() public{
        seller=msg.sender;
        State = StateType.itemAvailable;
    }

    function buy(address seller,address buyer , uint price)public payable {
        require(price <= saldos[buyer], "Saldo insuficiente");
        State=StateType.itemPurchased;
        saldos[buyer] -= price;
        saldos[seller] += price;

        emit PurchasedItem(seller,buyer, msg.value);
    }
}