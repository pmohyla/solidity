//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

library formula {
    function bascara(int32 a, int32 b, int32 c) public pure returns (int32){        
        return  (-b +((b**2-(4*a*c)))**1/2)/ 2*a  ;
    }
}
contract conta{
    using formula for int32;
    function calc_bascara(int32 a, int32 b, int32 c) public pure returns(int32){
        return a.bascara(b,c);
    }
}