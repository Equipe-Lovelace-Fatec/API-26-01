Algoritmo "CALCULADORA"

Var
   // VARIAVEIS NUMEROS PRIMOS
   num, d, i, sequencia, contador: inteiro
   resto: real
   //variável sequencia para primos e alternada

   //VARIAVEIS TRIBONACCI
   t1, t2, t3, consequente, n: inteiro
   //variável n para tribonacci e para sequência alternada

   //VARIAVEIS CUBOS
   inicial : inteiro
   final : inteiro
   resultado : real
   // não é possível rodar com o resultado sendo inteiro por conta da potência

   //VARIAVEIS TRIANGULARES
   posicao: inteiro
   resposta: real

   opcao, calculo : inteiro
   repetir : caractere

   //VARIÁVEIS ALTERNADA
   ordem: inteiro
   sinal: caractere
   termo: real

   //VARIÁVEIS FATORIAL
   fatorial: inteiro


Inicio
Mudacor ("Preto", "Fundos")
Mudacor ("Amarelo", "Frente")
repetir <- "n"
enquanto repetir = "n" faca

   escreval ("----------------")
   escreval ("  CALCULADORA")
   escreval ("----------------")
   escreval ("1 - Sequência de Cubos")
   escreval ("2 - Sequência de Números Primos")
   escreval ("3 - Sequência Tribonacci")
   escreval ("4 - Sequência de Números Triangulares")
   escreval ("5 - Sequência Fibonacci")
   escreval ("6 - Sequência Alternada")
   escreval ("7 - Sequência de Fatorial")
   escreval ("8 - Sequência de Quadrados Perfeitos")
   escreval ("0 - Sair")
   escreval("")
   leia(opcao)
   limpatela

   escolha opcao
   caso 1
      repetir <- "s"
      enquanto (repetir = "s") ou (repetir = "S") faca
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
            se (final > 99999) ou (final < -99999) entao
               escreval ("Escolha um número dentro do intervalo estipulado")
            fimse
         até (final >= -99999) e (final <= 99999)
         escreval ("------------------------------------------------------")
         escreval ("A Sequência de Cubos entre", inicial, " e", final, " é:")
         se inicial <= final entao
            para i de inicial ate final faca
               resultado <- i ^ 3
               escreval (i, "³ = ", resultado)
            fimpara
         fimse
         se inicial >= final entao
            para i de inicial ate final passo -1 faca
               resultado <- i ^ 3
               escreval (i, "³ = ", resultado)
            fimpara
         fimse
         escreval ("")
         escreval ("Deseja calcular outra sequência de cubos? (s/n)")
         leia (repetir)
         limpatela
      fimenquanto

   caso 2
      repetir <- "s"
      enquanto (repetir = "s") ou (repetir = "S") faca
         escreval("---------------------------")
         escreval("SEQUÊNCIA DE NÚMEROS PRIMOS")
         escreval("---------------------------")
         escreval("")

         repita
            escreval("Quantos elementos terá a sequência? ")
            escreva("(Escolha um valor entre 1 e 250) ")
            leia(sequencia)
            se (sequencia < 1) ou (sequencia > 250) entao
               escreval("")
               escreval("Você escolheu um valor fora do limite. Digite outro valor.")
               escreval("")
            fimse
         ate(sequencia >= 1) e (sequencia <= 250)

         num <- 1
         contador <- 0

         enquanto (contador < sequencia) faca  //repete até que a quantidade de elementos desejada seja encontrada
            d <- 0
            para i de 1 ate num faca //números divididos por todos os valores até ele mesmo
               resto <- num % i
               se resto = 0 entao
                  d <- d + 1  // divisor foi encontrado e é contabilizado
               fimse
            fimpara

            se (num > 1) e (d = 2)entao  //condição para um número ser primo
               contador <- contador + 1 // contabiliza como mais um primo encontrado
               escreval (contador, "° número primo:",num)
            fimse
            num <- num + 1 //faz o mesmo processo com o próximo número inteiro
         fimenquanto
         escreval ("")
         escreval ("Deseja calcular outro número primo? (s/n)")
         leia (repetir)
         limpatela
      fimenquanto

   caso 3
      repetir <- "s"
      enquanto (repetir = "s") ou (repetir = "S") faca
         escreval ("--------------------")
         escreval ("SEQUÊNCIA TRIBONACCI")
         escreval ("--------------------")
         escreval("Quantos termos quer em sua sequência?")
         escreval("(Escolha um valor entre 4 e 39)")
         escreval()
         escreva("Número de termos = ")
         leia(n)
         se (n <= 3) ou (n > 39) entao  // limitação
            escreval("Valor invalido! Escreva um valor entre 4 e 39!")
         senao
            t1 <- 0  // condições fixas
            t2 <- 0
            t3 <- 1
            escreval("Termo 1º: ",t1)
            escreval("Termo 2º: ",t2)
            escreval("Termo 3º: ",t3)

            para i de 4 ate n faca // calculo a partir do 4º termo. 3 primeios já definidos
               consequente <- t1 + t2 + t3
               escreval("Termo", i, "º: ", consequente) // impressão termo calculado
               t1 <- t2
               t2 <- t3
               t3 <- consequente // "deslizamento" dos valores. Guardando apenas os ultimos termos.
            fimpara
         fimse
         escreval ("")
         escreval ("Deseja calcular outro Tribonacci? (s/n)")
         leia (repetir)
         limpatela
      fimenquanto

   caso 4
      repetir <- "s"
      enquanto (repetir = "s") ou (repetir = "S") faca
         escreval ("---------------------------------")
         escreval ("SEQUÊNCIA DE NÚMEROS TRIANGULARES")
         escreval ("---------------------------------")
         escreval ("Qual posição você deseja calcular? (entre 1 a 46340)")
         leia (posicao)
         repita
            se (posicao >=1) e (posicao <= 46340) entao
               resposta <- posicao*(posicao+1)/2
               escreval ("O número triangular na posição", posicao, " é:", resposta)
            senao
               escreval ("Você escolheu um número fora do período permitido")
               escreval ("Qual posição você deseja calcular? (entre 1 a 46340)")
               leia (posicao)
               se (posicao >=1) e (posicao <= 46340) entao
                  resposta <- posicao*(posicao+1)/2
                  escreval ("O número triangular na posição", posicao, " é:", resposta)
               fimse
            fimse
         ate (posicao >=1) e (posicao <=46340)

         escreval ("")
         escreval ("Deseja calcular outra posição? (s/n)")
         leia (repetir)
         limpatela
      fimenquanto

   caso 5
      repetir <- "s"
      enquanto (repetir = "s") ou (repetir = "S") faca
         escreval ("--------------------")
         escreval ("SEQUÊNCIA FIBONACCI")
         escreval ("--------------------")
         escreval("Quantos termos quer em sua sequência?")
         escreval("(Escolha um valor entre 3 e 47)")
         escreval()
         escreva("Número de termos = ")
         leia(n)
         se (n <= 2) ou (n > 47) entao // limitação
            escreval("Valor invalido! Escreva um valor entre 3 e 47!")
         senao // tratamento dos 2 primeiros termos para não entrarem no laço "para"
            t1 <- 0  // condições fixas
            t2 <- 1
            escreval("Termo 1º:",t1)
            escreval("Termo 2º:",t2)
            para i de 3 ate n faca // calculo a partir do 3º termo. 2 primeios já definidos
               consequente <- t1 + t2
               escreval("Termo", i, "º:", consequente) // impressão termo calculado
               t1 <- t2
               t2 <- consequente // "deslizamento" dos valores. Guardando apenas os ultimos termos.
            fimpara
         fimse

         escreval ("")
         escreval ("Deseja calcular outro Fibonacci? (s/n)")
         leia (repetir)
         limpatela
      fimenquanto

   caso 6
      repetir <- "s"
      enquanto (repetir = "s") ou (repetir = "S") faca
         escreval("-------------------")
         escreval("SEQUÊNCIA ALTERNADA")
         escreval("-------------------")
         escreval("")

         repita
            escreval("Quantos termos terá a sequência?")
            escreva("(Escolha um valor entre 1 e 5623.) ")
            leia(sequencia)
            se (sequencia <= 0) ou (sequencia > 5623) entao
               escreval ("Você escolheu um valor fora do limite. Digite outro valor.")
               escreval("")
            fimse
         ate (sequencia > 0) e (sequencia <= 5623)

         repita
            escreval("")
            escreval("O primeiro termo da sequência será positivo ou negativo?")
            escreva("(Digite '+' ou '-') ")
            leia(sinal)
            se (sinal <> "+") e (sinal <> "-") entao
               escreval("Apenas '+' ou '-' são respostas válidas.")
               escreval("")
            fimse
         ate (sinal = "+") ou (sinal = "-")

         repita
            escreval("")
            escreval("Qual será a ordem de grandeza da sequência? ")
            escreva("(Escolha um valor entre 1 e 4.) ")
            leia(ordem)
            se (ordem < 1) ou (ordem > 4) entao
               escreval ("Você escolheu um valor fora do limite. Digite outro valor.")
               escreval("")
            fimse
         ate (ordem >= 1) e (ordem <= 4)

         se sinal = "+" entao //para primeiro termo positivo
            n <- 0
            enquanto (n < sequencia) faca
               para n de 1 ate sequencia faca
                  termo <- ((-1) ^ (n+1)) * (n^ordem) //cálculo
                  escreval(n,"° termo:",termo)
               fimpara
               n <- n + 1 //para calcular próximo termo
            fimenquanto

         senao
            se sinal = "-" entao //para primeiro termo negativo
               n <- 0
               enquanto (n < sequencia) faca
                  para n de 1 ate sequencia faca
                     termo <- ((-1) ^ n) * (n^ordem) //cálculo
                     escreval(n,"° termo:",termo)
                  fimpara
                  n <- n + 1 //para calcular próximo termo
               fimenquanto
            fimse
         fimse

         escreval ("")
         escreval ("Deseja calcular outra sequência alternada? (s/n)")
         leia (repetir)
         limpatela
      fimenquanto

   caso 7
      repetir <- "s"
      enquanto (repetir = "s") ou (repetir = "S") faca
         escreval("---------------------")
         escreval("SEQUÊNCIA DE FATORIAL")
         escreval("---------------------")
         escreval("")
         escreva ("Escolha um número (entre 0 e 12): ")
         leia(num)
         //Verifica se o número é valido
         se (num <= 0) ou (num > 12) entao //12 FATORIAL é o limite no VisualG, um numero maior ficará com o resultado incorreto
            escreval("Valor inválido!")
         senao
            fatorial <- 1 //A base do fatorial é o 1

            escreva(num, "!") //mostra a conta, nao apenas o resultado


            //loop para calcular o fatorial
            para i de num ate 1 passo -1 faca
               escreva(i) //mostra o numero atual

               se i > 1 entao
                  escreva (" x")
               fimse

               fatorial <- fatorial * i
            fimpara

            //resultado final
            escreval(" =", fatorial)
         fimse

         escreval ("")
         escreval ("Deseja calcular outro fatorial? (s/n)")
         leia (repetir)
         limpatela
      fimenquanto

   caso 8
      repetir <- "s"
      enquanto (repetir = "s") ou (repetir = "S") faca
         escreval("--------------------------------------")
         escreval("SEQUÊNCIA DE QUADRADOS PERFEITOS")
         escreval("--------------------------------------")
         escreval("")
         repita
            escreval("Escolha o número inteiro inicial:")
            escreval("(Entre 0 e 99999)")
            leia(resultado)
            se (resultado < 0) ou (resultado > 99999) ou (resultado - int(resultado) <> 0) entao
               escreval("Escolha um número dentro do intervalo estipulado")
            fimse
         ate (resultado >= 0) e (resultado <= 99999) e (resultado - int(resultado) = 0)
         inicial <- int(resultado)

         repita
            escreval("Escolha o número inteiro final:")
            escreval("(Entre 0 e 99999)")
            leia(resultado)
            se (resultado < 0) ou (resultado > 99999) ou (resultado - int(resultado) <> 0) entao
               escreval("Escolha um número dentro do intervalo estipulado")
            fimse
         ate (resultado >= 0) e (resultado <= 99999) e (resultado - int(resultado) = 0)
         final <- int(resultado)

         escreval("------------------------------------------------------")
         escreval("Quadrados perfeitos entre ", inicial, " e ", final, ":")
         escreval("")

         se inicial <= final entao
            para i de inicial ate final faca
               contador <- 0
               enquanto (contador * contador) <= i faca
                  contador <- contador + 1
               fimenquanto
               contador <- contador - 1
               se (contador * contador) = i entao
                  escreval(i, " - Raiz: ", contador)
               fimse
            fimpara
         fimse

         se inicial > final entao
            para i de inicial ate final passo -1 faca
               contador <- 0
               enquanto (contador * contador) <= i faca
                  contador <- contador + 1
               fimenquanto
               contador <- contador - 1
               se (contador * contador) = i entao
                  escreval(i, " - Raiz: ", contador)
               fimse
            fimpara
         fimse
         escreval("")
         escreval("Deseja calcular outra sequência de quadrados perfeitos? (s/n)")
         leia(repetir)
         limpatela
      fimenquanto
      limpatela

   caso 0
      repetir <- "s"
      escreval ("Você escolheu sair.")

   outrocaso
      repetir <- "n"
      escreval("Opção inválida. Digite um dos valores presentes no menu.")
      escreval("")

   fimescolha
fimenquanto

Fimalgoritmo
