//SPDX-License-Identifier:MIT
pragma solidity ^0.8.2;

contract venda{
    bool pago = false;
    uint256 notaFiscal;
       

    function pagarProduto() public payable returns(string memory){
        require (msg.value == 3500 , "pagamento insuficiente");
       // if (msg.value == 3500){
        pago=true;
        return "Pagamento efetuado";            
        //}
        //return "ERRO - processPagamento";
    }
    function emitirNF(uint256 NF) public returns(uint256 ){
        require (pago ==  true, "Falta efetuar pagamento");
        notaFiscal = NF;
        return notaFiscal;
    }    
}

contract vendaDinheiro{

    mapping (address =>uint256) public caixa;      // QUEM VAI PAGAR
    produto[] public listaProdutos;
                                        // STRUCT= CRIA O OBJETO PRODUTO
    struct produto{
        string nome;
        uint preco;                   // PARAMETROS DO OBJETO PRODUTO 
        address vendedor;                        
    }                                  // É PUBLIC= ABERTO PARA QQ UM ACESSAR
                                    // É PAYABLE = VAI USAR MOEDA DO SOLIDITY
    function depositar() public payable  {
        caixa[msg.sender] += msg.value;    // PARA FAZER DEPOSITOS DO SENDER
    }



                            // PROCESSO DE COMPRAR: ID do produto na lista, e quantidades compradas
    function efetuarCompra(uint256 ID , uint qde) public  {        
        uint totalCompra =listaProdutos[ID].preco*qde;
        require(caixa[msg.sender] >= totalCompra , " caixa insuficiente");
        caixa[msg.sender]-=totalCompra;  
        caixa[listaProdutos[ID].vendedor] += totalCompra;     
    }




    function cadastrar(string calldata nome,uint preco , address vendedorcaixa) public{
        listaProdutos.push(produto(nome,preco, vendedorcaixa));      // P[REENCHE OS PRODUTOS NA LISTA

    }
}
