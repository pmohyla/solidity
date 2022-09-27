const { getContractFactory } = require("@nomiclabs/hardhat-ethers/types");
const { expect } = require("chai");

let aula1;
let signers;
describe( "aula1", async function (){
    it("deve fazer o deploy do contrato", async function(){
        let Aula1 = await ethers.getContractFactory("aula1");
        aula1 = await Aula1.deploy();
        signers = await ethers.getSigners();
    })
    it("deve validar a msg do HelloWorld", async function(){
        let texto = await aula1.helloworld ();
        expect ("hello world - have a good time and peace ").to.be.equal(texto)
    })
    it("deve validar a msg CARTA", async function(){
        let texto = await aula1.texto ();
        expect (" Sao Paulo , terra da garoa. Data : 26 de janeiro de 2022  , Previsao do tempo para o mes : Sol ").to.be.equal(texto);
            
    })    
})