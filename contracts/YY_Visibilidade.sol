//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

/*contract visibil{
    string nome = "pavel";

    function nomeP() public pure returns(string memory){
        return "public";     
    }
    function nomeE() external view returns(string memory){
        return "external";
    }
    function nomeI() internal view returns(string memory){
        return "internalPavel";        
    }
    function nomePR() public view returns(string memory){
        return "privatePavel";
    }    
}
contract B is visibil{
    function QQQ() external view returns(string memory){
        return nomeI();
    }
    function BBB() external view returns(string memory){
        return nomePR();
    }
}*/

contract visivariavel{
    string internal nome;

    function salvarvariavel(string memory mohyla)external{
        nome = mohyla;
    }
    function qualvariavel()internal view returns(string memory){
        return nome;
    }
}

contract altera is visivariavel{
    function muda()external view returns(string memory){
        return qualvariavel();
    }

}