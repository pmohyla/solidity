
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract CompraVenda{
    mapping(string => uint) private catalogo;
    mapping (address => compra[]) public totalCliente;
    
    compra[] public encomendas;
    
    compra public pedidoCompra;        // "compra " É o TIPO/unidade da variavel/OBJETO .  "PedidoCompra", é o OBJETO neste caso.
                                     // "pedidoCompra" é o OBJETO !!!  
    struct compra{                   // STRUCT define as caracteristicas do TIPO "compra".Como ele é !!.
        string produto;
        uint aPagar;                   // Parametros GENERICOS DO OBJETO - "A PAGAR pelo total da quantidade
        bool pago;
        bool enviado;
        bool entregue;
        string NotaFiscal;
        uint qdade;
        
    }
    constructor (){               //  Sao as  Variaveis a serem  utilizadas no Contrato.
        catalogo["cafe"]=450;       // Os  KEYS sao STRINGS : cafe,arroz,feijao , etc
        catalogo["arroz"]=350;     //  Na verdade sao as variaveis do Dicionario:Catalogo
        catalogo["feijao"]=700;     //  formam o conteudo do Dicionario/Mapping 
        catalogo["uva"]= 200;  
        catalogo["carne"]=750;  
    }

    function getCatalogo(string memory produto, uint qdadedesejada) public view returns(uint){
        return catalogo[produto]* qdadedesejada;
                                             // o Produto é a STRING (KEY)e a qdade é o UINT (VALUE) do Mapping.
    }

    function comprar(string memory nomeProduto, uint qdadeComprar) payable public returns(string memory){
        require (catalogo[nomeProduto]*qdadeComprar <= msg.value, " Erro de pagamento");
        pedidoCompra.produto = nomeProduto;                          // Nomes/condicoes comuns atribuidos aos paramentros do OBJETO/PedidoCompra.
        pedidoCompra.aPagar = catalogo[nomeProduto]*qdadeComprar;               //   idem
        pedidoCompra.pago = true;                                    //idem  CONDICAO ESPECIFICA DE ENTRADA
        pedidoCompra.qdade= qdadeComprar;         
        encomendas.push(pedidoCompra);             
        totalCliente[msg.sender] = encomendas;
        return ("compra efetuada e paga ");   
    }

    function totPagamentos()public view returns(uint){
        uint totalPag ;      
        
        for (uint i ; i< encomendas.length; i ++){
            totalPag=totalPag+encomendas[i].aPagar;           // Na Lista 'encomendaes', posicoes :0,1,2,etc, 
        }
        return totalPag;
    }           
         
    function enviarProduto() public returns(string memory){
        pedidoCompra.enviado = true;
        return "enviado com sucesso";
    }

    function receberProduto(bool emConformidade) public{
        require (pedidoCompra.entregue == false , " Pedido ja foi recebido");
        if (emConformidade == true){
            pedidoCompra.entregue = true;
            pedidoCompra.NotaFiscal = "Pedido entregue com sucesso";
        }
        else {
            pedidoCompra.NotaFiscal = "pedido nao entregue em conformidade";           
        }
    }    
      
}
