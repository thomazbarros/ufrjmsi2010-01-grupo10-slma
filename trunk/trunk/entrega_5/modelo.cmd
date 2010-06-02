!create joao : Autor
!create bestSeller : Livro
!set bestSeller.titulo := 'BestSeller'
!set bestSeller.prazoDisponibilidade := '20'
!set bestSeller.custo  := 2.99
!create maria : Editor
!create melhorGrafica : Grafica
!create depositoABC : Deposito
!set depositoABC.quantidadeEstoque := 0
!create lojaDez : Livreiro
!create pedidoUm : Pedido
!set pedidoUm.estado := 'entregando'
!set pedidoUm.formaEnvio := 'expresso'
!create setorComercial : SetorComercial
!create faturaEncomenda : FaturaEncomenda
!set faturaEncomenda.forma := 'cartao'
!set faturaEncomenda.prazoPagamento := '31/05/2010'
!create faturaEntrega : FaturaEntrega
!set faturaEntrega.dataVencimento := '30/06/2010'
!create melhorTransportadora : Transportadora
!create bestSellerPronto : LivroPronto
!set bestSellerPronto.quantidade := 20
!create entrega : Entrega
!set entrega.custo := 5.00
!set entrega.dataEnvio :=  '01/06/2010'
!set entrega.quantidade := 10
!create pagamento : Pagamento
!create devolucao : Devolucao
!set devolucao.valor := 2.99
!set devolucao.motivo := 'livro estragado'
!set devolucao.quantidade := 1
!create contrato : Contrato
!set contrato.taxa := 5.00
!set contrato.prazoValidade := '31/12/2010'
!create encomenda : Encomenda
!set encomenda.custo := 2.99
!insert(joao,contrato) into assina
!insert(joao,maria) into trabalha
!insert(maria,melhorGrafica) into solicitaCotacao
!insert(melhorGrafica,bestSeller) into imprime
!insert(melhorGrafica,depositoABC) into enviaLivro
!insert(depositoABC,entrega) into prepara
!insert(melhorTransportadora,entrega) into realiza
!insert(depositoABC,pedidoUm) into recebe
!insert(encomenda,setorComercial) into informaEncomenda
!insert(devolucao,setorComercial) into informaDevolucao
!insert(devolucao,depositoABC) into  remeteLivros
!insert(lojaDez,pedidoUm) into preenche
!insert(lojaDez,setorComercial) into solicitaDevolucao
!insert(setorComercial,devolucao) into preparaCheque
!insert(devolucao,lojaDez) into eEfetuada
!insert(lojaDez,bestSeller) into compra
!insert(lojaDez,bestSeller) into cosultaDados
!insert(joao,bestSeller) into escrever
!insert(setorComercial,faturaEncomenda) into faz
!insert(pedidoUm,bestSellerPronto) into contem
!insert(bestSellerPronto,bestSeller) into gerado
!insert(entrega,faturaEntrega) into gera
!insert(pagamento,lojaDez) into realizado
!insert(pagamento,faturaEncomenda) into efetuado
!insert(encomenda,faturaEncomenda) into possui
!insert(depositoABC,encomenda) into envia

