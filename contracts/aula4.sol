//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

import "./math.sol";

contract aula4{
    using math for uint256 ;

    function calc_potencia(uint256 b,uint256 p) public pure  returns(uint256){
        return  potencia(b,p);    
    }
    function calc_mista(uint256 x, uint256 y,uint256 z, uint256 d) public pure returns(uint256){
        return x.mista(y,z,d);
    }
    function calc_soma(uint256 a, uint256 b, uint256 c, uint256 d) public pure returns(uint256){
        return a.soma(b).soma(c).soma(d);
    }
}