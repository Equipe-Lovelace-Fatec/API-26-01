Algoritmo "CALCULADORA"


Var
// VARIAVEIS NUMEROS PRIMOS
   num, d, i, sequencia, contador: inteiro //VARIAVEL i para primos e tribonati e cubos sendo contador na tribonatti, em cubos é a variável contadora que controla o número de repetições
   resto: real
   //num: números que serão testados, d: divisores dos números, i: números que serão testados como divisores
   //sequencia: quantidade de elementos que o usuário deseja, contador: acumula a quantidade de numeros primos encontrada
   //resto: armazena o resto das operações de divisão

   //VARIAVEIS TRIBONATTI
   termo: vetor[1..60] de real
   n: inteiro //quantos termos a sequencia terá
   
   //VARIAVEIS CUBOS
  inicial : inteiro
  final : inteiro
  resultado : real
// não é possível rodar com o resultado sendo inteiro por conta da potência

//VARIAVEIS TRIANGULARES
   posicao: inteiro
   resposta: real

   opcao, calculo : inteiro
   intervalo, repetir : caractere
Inicio

   opcao <- -1
   enquanto opcao <> 0 faca
      escreval ("----------------")
      escreval ("  CALCULADORA")
      escreval ("----------------")
      escreval ("1 - Sequência de Cubos")
      escreval ("2 - Sequência de Números Primos")
      escreval ("3 - Sequência Tribonacci")
      escreval ("4 - Sequência de Números Triangulares")
      escreval ("0 - Sair")
      leia (opcao)
      limpatela

      Se opcao = 1 entao
         repetir <- "s"
         enquanto repetir = "s" faca
            escreval ("-------------------")
            escreval ("SEQUÊNCIA DE CUBOS")
            escreval ("-------------------")
            repita
               escreval ("Escolha o número inteiro inicial:")
               escreval ("(Entre -99999 e 99999)")
               leia (inicial)
               se (inicial > 99999) ou (inicial < -99999) entao
                  escreval ("Escolha um número dentro do intervalo estipulado")
               fimse
            ate (inicial <= 99999) e (inicial >= -99999)
            repita
               escreval ("Escolha o número inteiro final:")
               escreval ("(Entre -99999 e 99999)")
               leia (final)
               se (final < 99999) ou (final > -99999) entao
                  escreval ("Escolha um número dentro do intervalo estipulado")
               fimse
            até (final >= -99999) e (final <= 99999)
            escreval ("------------------------------------------------------")
            escreval ("A Sequência de Cubos entre", inicial, " e", final, " é:")
            para i de inicial ate final faca
               resultado <- i ^ 3
               escreval (i, "³ = ", resultado)
            fimpara
            escreval ("")
            escreval ("Deseja calcular outra sequência de cubos? (s/n)")
            leia (repetir)
            limpatela
         fimenquanto
      fimse

      Se opcao = 2 entao
         repetir <- "s"
         enquanto repetir = "s" faca
            escreval("---------------------------")
            escreval("SEQUÊNCIA DE NÚMEROS PRIMOS")
            escreval("---------------------------")
            escreval("")
            escreval("Quantos elementos terá a sequência? ")
            escreva("(Escolha um valor entre 1 e 250) ")
            leia(sequencia)

            se sequencia < 250 entao

               num <- 1 //números inteiros que seão testados para serem classificados comoo primos ou não
               contador <- 0

               enquanto (contador < sequencia) faca  //repete até que a quantidade de elementos desejada pelo usuário seja encontrada
                  d <- 0
                  para i de 1 ate num faca //i faz com que os números sejam divididos por todos os valores até ele mesmo(ex.: 5 será divivido por 1, 2, 3, 4 e 5)
                     resto <- num % i
                     se resto = 0 entao
                        d <- d + 1  // se resto for 0, então um divisor foi encontrado e é contabilizado
                     fimse
                  fimpara

                  se (num > 1) e (d = 2)entao  //condição para um número ser primo
                     contador <- contador + 1 // contabiliza como mais um primo encontrado para a continuação da sequência
                     escreval (contador, "° número primo:",num)
                  fimse
                  num <- num + 1 //faz o mesmo processo com o próximo número inteiro
               fimenquanto
            senao
               escreval("")
               escreval("Você escolheu um valor maior do que o permitido.")
            fimse

            escreval ("Deseja calcular outro número primo? (s/n)")
            leia (repetir)
            limpatela
         fimenquanto
      fimse

      Se opcao = 3 entao
         repetir <- "s"
         enquanto repetir = "s" faca
         escreval ("--------------------")
            escreval ("SEQUÊNCIA TRIBONACCI")
            escreval ("--------------------")
            Escreval("Quantos termos quer em sua sequência?")
            leia(n)
            termo[1] <- 0 // condições iniciais fixas
            termo[2] <- 0
            termo[3] <- 1
            se n<1 entao
               Escreval("Escreva um valor que seja maior ou igual a 1!")// para calcular a sequência
            senao
               se n>60 entao
                  Escreval("Limite excedido. Escreva um valor que seja menor ou igual a 60!")// limite antes de virar notação
               senao
                  para i de 4 ate n faca  // calcula a partir do 4 termo, ja que os 3 primeiros termos são fixos
                     termo[i] <- termo[i-1] + termo[i-2] + termo[i-3] //formula tribonacci
                  fimpara // separa o Para de calculo do Para de impressão
                  para i de 1 ate n faca  //para aparecer todos os termos, inclusive t1, t2 e t3
                     escreval(termo[i], " ")  // impressão da sequência
                  fimpara
               fimse
            fimse
            escreval ("Deseja calcular outro Tribonacci? (s/n)")
            leia (repetir)
            limpatela
         fimenquanto
      fimse

Se opcao = 4 entao
         repetir <- "s"
         enquanto repetir = "s" faca
            escreval ("------------------------------")
            escreval ("SEQUÊNCIA NÚMEROS TRIANGULARES")
            escreval ("------------------------------")
            escreval ("Qual posição você deseja calcular? (entre 1 a 46340)")
            leia (posicao)
            se (posicao >=1) e (posicao <= 46340) entao
               resposta <- posicao*(posicao+1)/2
               escreval ("O número triangular na posição", posicao, " é:", resposta)
               escreval ("Deseja calcular outra posição? (s/n)")
               leia (repetir)
               limpatela
            senao
               escreval ("Você escolheu um número maior do que o permitido")
            fimse
         fimenquanto
      fimse


      Se opcao = 0 entao
         escreval ("Você escolheu sair")
      fimse

      se opcao <> 0 entao
         escreval("")
         escreval("Pressione ENTER para voltar ao menu...")
         leia(intervalo)
         limpatela
      fimse

   fimenquanto


Fimalgoritmo
