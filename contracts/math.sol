//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

library math{
    function potencia(uint256 b, uint256 p)internal pure returns(uint256){
        return b**p ;      
    }
    function mista(uint256 x,uint256 y, uint256 z, uint256 d) internal pure returns(uint256){
        return (x+y-z)/d;
    }    
    function soma(uint256 a, uint256 b) internal pure returns(uint256){
        return a+b;
    }
}
