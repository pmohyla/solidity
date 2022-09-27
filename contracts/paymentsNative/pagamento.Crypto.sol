//SPDX-License-Identifier:MIT
pragma solidity ^0.8.2;
// trata-se de contrato de fornecimento (ex: serv. transporte) e pagamento por parte do cliente.


contract pagamentoCrypto{
    //address fornecedor = 0x2E06ACB4DB2762680097061AFeaa47c844110452;
    mapping(address => uint256) public saldos;
    mapping(address => uint256)public saldosPendentes;
    mapping(address => contratoServico) public contratosDeFornecimento;

    struct contratoServico{
        address cliente;
        address fornecedor;
        address intermediario;
        bool etapaIntermediaria;
        bool entregue;
        bool pago;
        uint256 preco;
    }
    function depositar()public payable{
        saldos[msg.sender] += msg.value;           
    }
    function cadastrarContrato(address enderecoCliente,
        address enderecoFornecedor,
        address enderecoIntermediario,
        //bool etapaIntermediaria,
        //bool entregue,
        //bool pago,
        uint256 preco) public {
            // montar logica para permitir cadastrar contrato com saldo suficiente
            // ao cadastrar contrato adicionar saldo pendente ao cliente
            contratosDeFornecimento[enderecoCliente].cliente = enderecoCliente;
            contratosDeFornecimento[enderecoCliente].fornecedor = enderecoFornecedor;
            contratosDeFornecimento[enderecoCliente].intermediario = enderecoIntermediario;
           // contratosDeFornecimento[enderecoCliente].etapaIntermediaria = etapaIntermediaria;
            //contratosDeFornecimento[enderecoCliente].entregue = entregue;
            //contratosDeFornecimento[enderecoCliente].pago = pago; 
            contratosDeFornecimento[enderecoCliente].preco = preco;

        }
        function entregaIntermediario (address clienteParam ) public {
            contratosDeFornecimento[clienteParam].etapaIntermediaria = true;

        }
        function entregarCliente(address clienteEntrega) public {
            require (contratosDeFornecimento[clienteEntrega].etapaIntermediaria == true,"falta a etapa intermediaria");
            require (contratosDeFornecimento[clienteEntrega].entregue == false , " mercadoria ja foi entregue");
            contratosDeFornecimento[clienteEntrega].entregue = true;

        }
        function pagar() public {
            require (saldos[msg.sender]>= contratosDeFornecimento[msg.sender].preco , "saldo insuficiente");
            contratosDeFornecimento[msg.sender].pago = true;
            saldos[msg.sender] = saldos[msg.sender] - contratosDeFornecimento[msg.sender].preco;
            
        }
}
// escrever funcao  para permitir criar contratos de fornecimento
// escrever mapping para guardar saldos pendentes 
// fazer estrutura para armazenar todas as entregas de produto
// funcao para executar contrato de fornecimento
// escrever funcao para permitir saque de moedas


