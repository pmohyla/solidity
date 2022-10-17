//SPDX-License-Identifier: MIT
import './interface.sol';

contract contratoPrincipal {
    IcontratoPai public contratoPai;
    contructor(address payable interface){
        contratoPai = interface;
    }
    function chamarOlaMundo public view return(string memory){
        return contratoPai.olaMundo();
    }
}