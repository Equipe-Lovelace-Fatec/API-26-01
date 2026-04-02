Algoritmo "CALCULADORA"


Var
   opcao, calculo, inicial, final, num, d, i, sequencia, contador, n  : inteiro
   intervalo, repetir : caractere
   resultado, resto : real
   termo: vetor[1..1000] de real
Inicio

   opcao <- -1
   enquanto opcao <> 0 faca
      escreval ("----------------")
      escreval ("  CALCULADORA")
      escreval ("----------------")
      escreval ("1 - Sequência de Cubos")
      escreval ("2 - Números Primos")
      escreval ("3 - Sequência Tribonacci")
      escreval ("0 - Sair")
      leia (opcao)
      limpatela

      Se opcao = 1 entao
         repetir <- "s"
         enquanto repetir = "s" faca
            escreval ("-------------------")
            escreval ("SEQUÊNCIA DE CUBOS")
            escreval ("-------------------")
            escreval ("Escolha o número inteiro inicial:")
            escreval ("(Entre -99999 e 99999)")
            leia (inicial)
            escreval ("Escolha o número inteiro final:")
            escreval ("(Entre -99999 e 99999)")
            leia (final)
            escreval ("------------------------------------------------------")
            escreval ("A Sequência de Cubos entre", inicial, " e", final, " é:")
            para i de inicial ate final faca
               resultado <- i * i * i
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
            escreval("--------------------")
            escreval("SEQUÊNCIA DE PRIMOS")
            escreval("--------------------")
            escreva("Quantos elementos terá a sequência? ")
            leia(sequencia)

            num <- 1
            contador <- 0
            enquanto (contador < sequencia) faca
               d <- 0
               para i de 1 ate num faca
                  resto <- num % i
                  se resto = 0 entao
                     d <- d + 1
                  fimse
               fimpara

               se (num > 1) e (d = 2)entao
                  contador <- contador + 1
                  escreval (contador, "° número primo:",num)
               fimse
               num <- num + 1
            fimenquanto
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
            Escreval("Digite os três primeiros termos de sua sequência")
            leia (termo[1], termo[2], termo[3])
            Escreval("Quantos termos quer em sua sequência?")
            leia(n)
            se n < 4 entao
               Escreval("Escreva um valor que seja maior ou igual a 4!")
            senao
               para i de 4 ate n faca
                  termo[i] <- termo[i-1] + termo[i-2] + termo[i-3]
               fimpara
               para i de 1 ate n faca
                  escreval(termo[i], " ")
               fimpara
            fimse
            escreval ("Deseja calcular outro Tribonacci? (s/n)")
            leia (repetir)
            limpatela
         fimenquanto
      fimse

      Se opcao = 4 entao
         escreval ("fibonatti")
         escreval ("triangular")
         escreval ("fatorial")
         escreval ("quadrados perfeitos")
         escreval ("sequencia geométrica")
         escreval ("sequencia alternada")
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