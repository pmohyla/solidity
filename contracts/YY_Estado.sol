//SPDX-License-Identifier:  MIT

pragma solidity ^0.8.2;

contract estado{
    uint numero = 245;

    function Qnum() external returns(uint){
        return numero;        
    }
    function QnumPure(uint a,uint b) external pure returns(uint){
        return a*b;
    }
    function QnumView() external view returns(uint){
        return numero;
    }

}