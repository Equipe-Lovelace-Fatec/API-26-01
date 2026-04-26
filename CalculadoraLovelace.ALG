Algoritmo "CALCULADORA"


Var
   // VARIAVEIS NUMEROS PRIMOS
   num, d, i, sequencia, contador: inteiro //VARIAVEL i para primos e tribonacci e cubos sendo contador na tribonacci, em cubos é a variável contadora que controla o número de repetições
   resto: real
   //num: números que serão testados, d: divisores dos números, i: números que serão testados como divisores
   //sequencia: quantidade de elementos que o usuário deseja, contador: acumula a quantidade de numeros primos encontrada
   //resto: armazena o resto das operações de divisão
   //variável sequencia para primos e alternada

   //VARIAVEIS TRIBONACCI
   t1, t2, t3, consequente, n: inteiro  //variável n para tribonacci e para sequência alternada

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

   //VARIÁVEIS ALTERNADA
   ordem: inteiro
   sinal: caractere
   termo: real
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
      escreval ("5 - Sequência Fibonacci")
      escreval ("6 - Sequência Alternada")


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
            t1 <- 0  // condições fixas
            t2 <- 0
            t3 <- 1
            escreval("Quantos termos quer em sua sequência?")
            escreval()
            escreva("Número de termos = ")
            leia(n)
            se (n <= 0) ou (n > 39) entao  // limitação
               escreval("Valor invalido! Escreva um valor entre 1 e 39!")
            senao   // tratamento dos 3 primeiros termos para não entrarem no laço "para"
               se n >= 1 entao
                  escreval("Termo 1º: ", t1)  // impressão dos termos já pre definidos
               fimse
               se n >= 2 entao
                  escreval("Termo 2º: ", t2)
               fimse
               se n >= 3 entao
                  escreval("Termo 3º: ", t3)
               fimse
               para i de 4 ate n faca // calculo a partir do 4º termo. 3 primeios já definidos
                  consequente <- t1 + t2 + t3
                  escreval("Termo", i, "º: ", consequente) // impressão termo calculado
                  t1 <- t2
                  t2 <- t3
                  t3 <- consequente // "deslizamento" dos valores. Guardando apenas os ultimos termos.
               fimpara
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
      Se opcao = 5 entao
         repetir <- "s"
         enquanto repetir = "s" faca
            escreval ("--------------------")
            escreval ("SEQUÊNCIA FIBONACCI")
            escreval ("--------------------")
            t1 <- 0 // condições fixas
            t2 <- 1

            escreval("Quantos termos quer em sua sequência?")
            escreval()
            escreva("Número de termos = ")
            leia(n)
            se (n <= 0) ou (n > 47) entao // limitação
               escreval("Valor invalido! Escreva um valor entre 1 e 47!")
            senao // tratamento dos 2 primeiros termos para não entrarem no laço "para"
               se n >= 1 entao
                  escreval("Termo 1º:", t1) // impressão dos termos já pre definidos
               fimse

               se n >= 2 entao
                  escreval("Termo 2º:", t2)
               fimse

               para i de 3 ate n faca // calculo a partir do 3º termo. 2 primeios já definidos
                  consequente <- t1 + t2
                  escreval("Termo", i, "º:", consequente) // impressão termo calculado

                  t1 <- t2
                  t2 <- consequente // "deslizamento" dos valores. Guardando apenas os ultimos termos.
               fimpara
            fimse
            escreval ("Deseja calcular outro Fibonacci? (s/n)")
            leia (repetir)
            limpatela
         fimenquanto
      fimse

      se opcao = 6 entao
      repetir <- "s"
         enquanto repetir = "s" faca
         escreval("-------------------")
         escreval("SEQUÊNCIA ALTERNADA")
         escreval("-------------------")
         escreval("")
         escreva("Quantos termos terá a sequência? ")
         leia(sequencia)
         escreval("")
         se sequencia <= 0 entao
            escreva ("Apenas valores maiores que 0 são válidos.")//tratamento de erro
         senao

            escreval("O primeiro termo da sequência será positivo ou negativo?")
            escreva("(Digite '+' ou '-') ")
            leia(sinal)
            se (sinal = "+") ou (sinal = "-") entao
               escreval("")

               escreva("Qual será a ordem de grandeza da sequência? ")
               leia(ordem)
               escreval("")

               se sinal = "+" entao //para primeiro termo positivo
                  n <- 1
                  enquanto (n < sequencia) faca
                     para n de 1 ate sequencia faca
                        termo <- ((-1) ^ (n+1)) * (n^ordem) //cálculo
                        escreval(n,"° termo:",termo)
                     fimpara
                     n <- n + 1 //para calcular próximo termo
                  fimenquanto

               senao
                  se sinal = "-" entao //para primeiro termo negativo
                     n <- 1
                     enquanto (n < sequencia) faca
                        para n de 1 ate sequencia faca
                           termo <- ((-1) ^ n) * (n^ordem) //cálculo
                           escreval(n,"° termo:",termo)
                        fimpara
                        n <- n + 1 //para calcular próximo termo
                     fimenquanto
                  fimse
               fimse
            senao
               escreva("Apenas '+' ou '-' são respostas válidas.") //tratamento de erro
            fimse
         fimse
         
         escreval ("")
         escreval ("Deseja calcular outra sequência alternada? (s/n)")
         leia (repetir)
         limpatela
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
