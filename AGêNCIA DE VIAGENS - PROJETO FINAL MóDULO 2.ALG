Algoritmo "Ag�ncia de Viagens - Projeto final m�dulo 2"
// Disciplina: L�gica de programa��o.
// Professor: Marcelo
// Descri��o: Simulador de cadastro de ag�ncia de viagem.
// Autor(a): Myllene Concei��o Ferreira do Nascimento
// Data atual: 28/07/2023
Var
   // Se��o de Declara��es das vari�veis
   opcao: inteiro
   quantidadeelementos, i: inteiro
   vet_nomecliente: vetor [1..3] de caractere
   vet_destino: vetor [1..3] de caractere
   vet_dataviagem: vetor [1..3] de caractere
   vet_cpfcliente: vetor [1..3] de inteiro
procedimento addcliente ()

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval ("Digite o nome do cliente: ")
   leia (vet_nomecliente [quantidadeelementos])
   escreval ("Digite o CPF do cliente: ")
   leia (vet_cpfcliente [quantidadeelementos])
   escreval ("Qual destino da sua viagem? ")
   leia (vet_destino [quantidadeelementos])
   escreval ("Digite a data da sua viagem: ")
   leia (vet_dataviagem [quantidadeelementos])

   quantidadeelementos <- quantidadeelementos +1

fimprocedimento
procedimento adddestino ()
Inicio
   escreval ("Digite para onde deseja viajar: ")
   leia (vet_destino [quantidadeelementos])
   escreval ("Digite a data da sua viagem: ")
   leia (vet_dataviagem [quantidadeelementos])

   quantidadeelementos <- quantidadeelementos +1

fimprocedimento

inicio
   escreval ("Bem vindo a Vai Pra Onde? Sua ag�ncia de viagens")
   quantidadeelementos <-1
   enquanto opcao <> 5 faca
      escreval ("Digite uma op��o")
      escreval ("1 - Adicionar cliente")
      escreval ("2 - Adicionar destino")
      escreval ("3 - Consultar a data da sua viagem")
      escreval ("4 - Listar Clientes")
      escreval ("5 - Sair do menu")
      leia (opcao)
      limpatela

      escolha opcao

      caso 1
         se quantidadeelementos <= 3 entao
            addcliente ()
         senao
            escreval ("N�o � poss�vel adicionar mais clientes!")
         fimse

      caso 2
         se quantidadeelementos <=3 entao
            adddestino ()
         senao
            escreval ("N�o � poss�vel adicionar destino!")
         fimse


      caso 3
         se quantidadeelementos -1 > 0 entao
            escreval ("Aqui est� a data da sua viagem: ")
            para i de 1 ate quantidadeelementos -1 faca
               escreval ("Nome do cliente" ,i,":")
               escreval ("Destino do Cliente: ",vet_destino[i])
               escreval ("Data da Viagem: ",vet_dataviagem[i])
            fimpara
         senao
            escreval ("Viagem n�o encontrada!")
         fimse

      caso 4
         se quantidadeelementos -1 > 0 entao
            escreval ("Listando Clientes: ")
            para i de 1 ate quantidadeelementos -1 faca
               escreval ("Nome do cliente: ",i,":")
               escreval ("Destino do Cliente: ",vet_destino[i])
               escreval ("Data da viagem: ",vet_dataviagem[i])
            fimpara
         senao
            escreval ("Cliente n�o cadastrado!")
         fimse


      caso 5
         escreval ("Saindo do programa...")
      outrocaso
         escreval ("Op��o inv�lida!")
      fimescolha
   fimenquanto

Fimalgoritmo