programa {
    inclua biblioteca Util --> u
    
    // Variáveis do jogador - SISTEMA MELHORADO
    cadeia nome_jogador = ""
    inteiro pontos_jogador = 0
    inteiro energia_jogador = 100        // Nova mecânica de energia
    inteiro momentum_jogador = 0         // Sistema de momentum para bônus
    inteiro sequencia_boa = 0           // Contador de boas decisões consecutivas
    logico desviador_jogador = falso
    logico pitstop_jogador = falso

    // Variáveis dos adversários - SISTEMA MELHORADO
    inteiro pontos_adv1 = 0, pontos_adv2 = 0, pontos_adv3 = 0
    inteiro energia_adv1 = 100, energia_adv2 = 100, energia_adv3 = 100  // Energia para adversários
    logico pitstop_adv3 = falso

    // Variáveis globais - NOVAS MECÂNICAS
    inteiro voltas = 3
    logico visualizouDetalhes = falso
    cadeia clima_atual = "normal"        // Sistema climático
    inteiro multiplicador_clima = 100    // Multiplicador baseado no clima
    inteiro volta_atual = 1
    
    funcao inicio() {
        // Tela inicial - MANTIDA ORIGINAL
        escreva("                            #@@@@@                          \n")
        escreva("                            @@@ @@+                         \n")
        escreva("                           -@@@ @@@                         \n")
        escreva("                           *@@@@@@@:                        \n")
        escreva("                          .*@@  @@@*                        \n")
        escreva("                                                            \n")
        escreva("                                                            \n")
        escreva("      :%@@  @@@ %@@: =@@@@@@@ @@@ .%@@@  @@@= :%@@@@*       \n")
        escreva("      :%@@  @@@ %@@:  =+@@@+- @@@ .@@@@  @@@= -@@@@@%:      \n")
        escreva("      :%@@  @@@ %@@:   -@@%:  @@@ :@@@@@@@@@# +@@  @@-      \n")
        escreva("      :%@@  @@@ %@@:   -@@%:  @@@ %@@ @@@ %@@ @@@@@@@=      \n")
        escreva("      :%@@@@@@@ %@@@@@  @@%:  @@@ @@@ #@@ %@@ @@@  @@@=      \n")
        escreva("                                                            \n")
        escreva("                                                            \n")
        escreva("  %@@@@@@ #@@@@@@@ %@@@@@@% @@@@@@@% @@@ #@@@@@@@  @@@@@@   \n")
        escreva("  %@@+    #@@-.@@@ %@@  @@% @@@  @@% @@@ #@@  @@@  @@%%@@:  \n")
        escreva("  %@@+    #@@-.@@@ %@@@@@@% @@@@@@@# @@@ #@@  @@@  @@  @@%  \n")
        escreva("  %@@*     @@=-@@@ %@@ @@@* @@@ @@@+ @@@ #@@  @@@ #@@@@@@%. \n")
        escreva("  %@@@@@@ *@@@@@@@ %@@  @@@ @@@  @@@ @@@ #@@@@@@@ @@@  @@@= \n")
        escreva("                                      A Corrida de milhões  \n")
        escreva("                                                  \n")
        escreva("                            ....-=+=:. ..                   \n")
        escreva("                      .+#@@@@@@@@@@@@@@@@@@*:.              \n")
        escreva("                  .-@@@@@@@@@@@@@@@@@@@@@@@@@@@:.           \n")
        escreva("                .#@%+=@@@@@@@@@@@@@@@@@@@@@@@@@@@=          \n")
        escreva("               .*.=%@@@@#=+**%@@@@@@@@@@@@@@@@@@@@%.        \n")
        escreva("              .%*. .  .=@@@@@@%=@@@@@@@@@@@@@@@@@@@@        \n")
        escreva("              +@@@@@@@@@@@@@@*:*#@@%#++=%@@@@@@@@@@@@:      \n")
        escreva("             .=%@@@@@@@@@@@@@@@@%#**##@@@@@=-##@@@@@@%.     \n")
        escreva("             .@@@#=-%@@@@@@@@@#-@@@@@@@@##-=@@@@@%##*=.     \n")
        escreva("             .@@@@@@@@@@#====@=@@.:-.@@@@@@ .=@+%@@%.       \n")
        escreva("             .@@@@@@@@@@@@@@=@+@@:...@@@@@@: .@@.@@@*       \n")
        escreva("             .@@@@@@@@@@@@@@=%@=@@@@@@@@@@@:..@@:#@@@.      \n")
        escreva("             .*@@@@@@@@@@@@@@=%@@-#@@@@@@@@*  =@:*@@@:      \n")
        escreva("              -@@@@@@@@@@@@@@@%=%@@%#:%@@@@@. :@=*@@@:      \n")
        escreva("               *@@@@@@@@@@@@@@@@@@++#@@@@+=*==-@++@@@:      \n")
        escreva("               .@@@@@@@@@@@@@@@@@@@@@@@@@:=@@@@@@%..#@@:    \n")
        escreva("                 .-=#@@@@@@@@@@@@@@@@@@@@@@%*+=%@@@@@@**.   \n")
        escreva("                       ..:#%@@@@@@@@@@@@@@@@@@@@@@@=:+##.   \n")
        escreva("                              .:*@@@@@@@@@@@@@@@@@@@@@@%    \n")
        escreva("                                   .:*%@@@@@@@@@@@@@@@@+    \n")
        escreva("                                         .@@@@@@@@@@@@#.    \n")
        escreva("                                            .:*@@@@@@%.     \n")
        escreva("                                                 .:%@*   \n \n")
        
        // Digite o nome do piloto
        escreva("Digite o nome de seu Piloto:  ")
        leia(nome_jogador)
        
        // Inicializa jogadores - VALORES MELHORADOS
        pontos_jogador = 0
        energia_jogador = 100
        momentum_jogador = 0
        sequencia_boa = 0
        desviador_jogador = falso
        pitstop_jogador = falso
        pontos_adv1 = 0
        pontos_adv2 = 0
        pontos_adv3 = 0
        energia_adv1 = 100
        energia_adv2 = 100
        energia_adv3 = 100
        pitstop_adv3 = falso

        // Mostra a História do jogo - MANTIDA ORIGINAL
        mostrarHistoria()

        // Opção de desviador - MELHORADA
        escreva("\n🔧 EQUIPAMENTOS ESPECIAIS 🔧\n")
        escreva("Deseja instalar o desviador de armadilhas? (-15 pontos, +5 energia)\n")
        escreva("(s/n): ")
        cadeia resposta
        leia(resposta)
        se (resposta == "s" ou resposta == "S") {
            desviador_jogador = verdadeiro
            pontos_jogador = pontos_jogador - 15  // Custo aumentado mas com benefício
            energia_jogador = energia_jogador + 5
            escreva("✅ Desviador instalado! Você terá vantagem contra armadilhas.\n")
        }
        
        menuPreCorrida()
    }

    funcao mostrarHistoria() {
        // MANTIDA ORIGINAL
        escreva("\n\n🏁 **História do Jogo** 🏁\n")
        escreva("Desde criança, ", nome_jogador, " sonhava em ser o melhor piloto de corridas do mundo.\n")
        escreva("Sem família rica ou equipe famosa, ele construiu seu primeiro carro com peças\n")
        escreva("usadas e muita coragem. Agora, ele tem uma chance única: participar do\n")
        escreva("Torneio dos Campeões, a corrida mais prestigiada do país.\n\n")
        
        escreva("Mas essa corrida não é apenas pelo troféu.\n")
        escreva("Se vencer, ", nome_jogador, " conquistará um contrato com a maior equipe da elite\n")
        escreva("automobilística - um patrocínio milionário que mudará sua vida para sempre.\n")
        escreva("Porém, para chegar lá, você precisará derrotar pilotos experientes,\n")
        escreva("enfrentar pistas perigosas e provar que talento e determinação podem\n")
        escreva("superar qualquer obstáculo.\n\n")
        
        escreva("Com o rugido dos motores e o mundo assistindo, só há uma regra:\n")
        escreva("CHEGAR EM PRIMEIRO!\n\n")
    }

    funcao menuPreCorrida() {
        escreva("\n\nAntes de começar, deseja ver detalhes da pista?\n")
        escreva("1. Sim\n")
        escreva("2. Não\n")
        
        inteiro opcao
        leia(opcao)
        
        se (opcao == 1) {
            detalhesPista()
        } senao se (opcao == 2) {
            contagemRegressiva()
        } senao {
            escreva("Opção inválida! Tente novamente.\n")
            menuPreCorrida()
        }
    }
    
    funcao detalhesPista() {
        // MANTIDA ORIGINAL + NOVAS INFORMAÇÕES
        escreva("\n»»————————————————————————★—————————————————————««\n")
        escreva("       DETALHES DA PISTA E ADVERSÁRIOS             \n")
        escreva("»»————————————————————————★—————————————————————««\n")        
        escreva("-----+=:::::=====+++++++++++++++++++++========++==\n")
        escreva("---=+-=*::===**=+****************+****===+*++++++=\n")
        escreva("--==:+-.====                              ====+===\n")
        escreva("-**:-:====                                 =+*=+++\n")
        escreva("::::====       ======-+=-+-==-========     =+*====\n")
        escreva("::-====     =====++=============           =======\n")
        escreva("-===*+=     =====**======                =========\n")
        escreva("====++=      =+++===               =======+*++*===\n")
        escreva("====#*+=     =====           =============+++=====\n")
        escreva("====**+=     =====     =========-=+++============+\n")
        escreva("====#*+     ======                         =====*+\n")
        escreva("=+=+++=    +===+===                          ====+\n")
        escreva("==*+*==    =====+*==*+=====::*.*::*::====     ===+\n")
        escreva("===*===      ===++=======================     ====\n")
        escreva(":::.--==                 #INICIO              ====\n")
        escreva(":::::-:===            FIM#                  ===+*=\n")
        escreva(":::::-:::========--=============--============-=-=\n")
        escreva("::-::::::=======**+*******************======*+=*++\n")
        escreva("                                                  \n")
        escreva("        ★★★Detalhes dos Adversários★★★         \n")
        escreva("                                                  \n")
        escreva("Relâmpago Max: É muito rápido nas retas, lento nas curvas\n")
        escreva("Curva Veloz: Tem vantagem nas curvas, lento nas retas\n")
        escreva("Trapaceiro X: Equilibrado, porém perde tempo com armadilhas e no pitstop!\n")
        escreva("                                                  \n")
        escreva("🆕 NOVAS MECÂNICAS:\n")  // Informações sobre novas mecânicas
        escreva("⚡ ENERGIA: Afeta sua performance (baixa energia = menos pontos)\n")
        escreva("🔥 MOMENTUM: Bônus acumulativo por boas decisões consecutivas\n")
        escreva("🌦️ CLIMA: Condições climáticas afetam todos os pilotos\n")
        escreva("🎯 CONSISTÊNCIA: Bônus por sequências de decisões inteligentes\n")
        escreva("                                                  \n")
        escreva("1. Voltar ao menu anterior\n")
        escreva("2. Começar corrida\n")
        
        inteiro opcao
        leia(opcao)
        
        se (opcao == 1) {
            visualizouDetalhes = verdadeiro
            menuPreCorrida()
        } senao se (opcao == 2) {
            contagemRegressiva()
        }
    }
    
    funcao contagemRegressiva() {
        // MANTIDA ORIGINAL
        escreva("   »»————-    ★     ★    ★    ————-««\n")
        escreva("        PREPARE-SE PARA A CORRIDA!\n")
        escreva("   »»————-     ★    ★    ★    ————-««\n\n")
        escreva("A corrida vai começar em...\n\n")
        
        // Contagem regressiva de 5 segundos
        para(inteiro i = 5; i >= 1; i--) {
            escreva("\t\t  🚦 ", i, " 🚦\n")
            u.aguarde(1000)
        }
        
        escreva("                   .            \n")
        escreva("               ..  .:          \n")
        escreva("              -@@--@@#:.       \n")
        escreva("            ..+%*  :+= ..      \n")
        escreva("           +:. *@+ :%%=:#@#-.  \n")
        escreva("         =%@@--@@@-=%@*::#@-.. \n")
        escreva("       .......  :.  -%+  *%-.  \n")
        escreva("     .=@@=#@@@.@@@@@@@@**@@@:  \n")
        escreva("   ...=@#: *@:  .%   =+. .     \n")
        escreva("  .-: :**:.:%@= =@%-=@@@+.     \n")
        escreva(" .@@@#*@@#:=@@* *@@= -*-       \n")
        escreva("  .+#  .+=  .+. .+@=...        \n")
        escreva("    ..-%@@%*@@@@.@@%:          \n")
        escreva("       .*+. .::  .:            \n")
        escreva("         ....%@@..             \n")
        escreva("             #@.               \n")
        escreva("               .#-             \n")
        escreva("                 .+-.          \n")
        escreva("                   .:+-        \n")
        escreva("                      :+-.     \n")
        escreva("                        .:*:   \n\n")
        escreva(nome_jogador, ", ACELERA!!!\n")
       
        escreva("\n\t\t  🏁 Vai!Vai!Vai! 🏁\n")
        escreva("\n\nCorrida iniciada! Boa sorte, ", nome_jogador, "!\n")
        
        // Inicia a corrida
        iniciarCorrida()
    }
    
    funcao iniciarCorrida() {
        // Corrida: 3 voltas - SISTEMA MELHORADO
        para (inteiro volta = 1; volta <= voltas; volta++) {
            volta_atual = volta
            escreva("\n🏁 INICIANDO VOLTA ", volta, " 🏁\n")
            
            determinarClima(volta)

            // Pit stop (entre voltas) - MELHORADO
            se (volta > 1) {
                pitStopMelhorado()
                pitStopAdversario()
            }

            para (inteiro trecho = 1; trecho <= 12; trecho++) {
                logico ehReta = (trecho % 2 == 1)
                
                calcularPontosJogador(trecho, ehReta)

                // Adversarios - SISTEMA MELHORADO
                calcularPontosAdversarios(ehReta)

                // Sistema de ultrapassagem melhorado (a cada 3 trechos)
                se (trecho % 3 == 0) {
                    sistemaUltrapassagemMelhorado()
                }

                // Armadilhas na volta 2 - MELHORADAS
                se (volta == 2) {
                    aplicarArmadilhasMelhoradas()
                }
                
                mostrarStatusJogador()
            }
            
            // Mostra placar parcial - MELHORADO
            mostrarPlacarParcial(volta)
        }

        // Resultado final
        mostrarRanking()
    }
    
    funcao determinarClima(inteiro volta) {
        inteiro chance = u.sorteia(1, 100)
        
        se (volta == 1) {
            clima_atual = "normal"
            multiplicador_clima = 100
            escreva("☀️ Clima: Ensolarado - Condições ideais!\n")
        } senao se (volta == 2) {
            se (chance <= 40) {
                clima_atual = "chuva"
                multiplicador_clima = 85
                escreva("🌧️ Clima: Chuva - Cuidado com a pista molhada! (-15% performance)\n")
            } senao {
                clima_atual = "normal"
                multiplicador_clima = 100
                escreva("☀️ Clima: Ensolarado - Condições normais!\n")
            }
        } senao { // volta 3
            se (chance <= 30) {
                clima_atual = "neblina"
                multiplicador_clima = 80
                escreva("🌫️ Clima: Neblina densa - Visibilidade reduzida! (-20% performance)\n")
            } senao se (chance <= 60) {
                clima_atual = "chuva"
                multiplicador_clima = 85
                escreva("🌧️ Clima: Chuva forte - Pista escorregadia! (-15% performance)\n")
            } senao {
                clima_atual = "normal"
                multiplicador_clima = 100
                escreva("☀️ Clima: Céu limpo - Última volta em condições perfeitas!\n")
            }
        }
    }
    
    funcao calcularPontosJogador(inteiro trecho, logico ehReta) {
        inteiro pontos_base = 10
        inteiro multiplicador_energia = 100
        inteiro bonus_momentum = 0
        inteiro bonus_consistencia = 0
        
        // Multiplicador baseado na energia (usando inteiros)
        se (energia_jogador >= 80) {
            multiplicador_energia = 120  // +20% se energia alta
        } senao se (energia_jogador >= 60) {
            multiplicador_energia = 100  // Normal
        } senao se (energia_jogador >= 40) {
            multiplicador_energia = 90   // -10% se energia média
        } senao {
            multiplicador_energia = 70   // -30% se energia baixa
        }
        
        // Bônus de momentum (acumula com boas decisões)
        se (momentum_jogador >= 10) {
            bonus_momentum = 5
        } senao se (momentum_jogador >= 5) {
            bonus_momentum = 3
        }
        
        // Bônus de consistência
        se (sequencia_boa >= 5) {
            bonus_consistencia = 8
        } senao se (sequencia_boa >= 3) {
            bonus_consistencia = 4
        }
        
        // Calcula pontos finais (usando apenas inteiros)
        inteiro pontos_finais = (pontos_base * multiplicador_energia * multiplicador_clima) / 10000
        pontos_finais = pontos_finais + bonus_momentum + bonus_consistencia
        
        pontos_jogador = pontos_jogador + pontos_finais
        
        // Reduz energia gradualmente
        energia_jogador = energia_jogador - u.sorteia(1, 3)
        se (energia_jogador < 0) energia_jogador = 0
        
        escreva(nome_jogador, " completou o trecho ", trecho, "! (+", pontos_finais, " pts")
        se (bonus_momentum > 0) escreva(" +", bonus_momentum, " momentum")
        se (bonus_consistencia > 0) escreva(" +", bonus_consistencia, " consistência")
        escreva(")\n")
    }
    
    funcao calcularPontosAdversarios(logico ehReta) {
        // Adversario 1 - Relâmpago Max (afetado por energia e clima)
        inteiro pontos_max = 0
        se (ehReta) {
            pontos_max = (12 * multiplicador_clima * energia_adv1) / 10000
        } senao {
            pontos_max = (8 * multiplicador_clima * energia_adv1) / 10000
        }
        pontos_adv1 = pontos_adv1 + pontos_max
        energia_adv1 = energia_adv1 - u.sorteia(1, 2)
        se (energia_adv1 < 20) energia_adv1 = 20

        // Adversario 2 - Curva Veloz
        inteiro pontos_curva = 0
        se (ehReta) {
            pontos_curva = (8 * multiplicador_clima * energia_adv2) / 10000
        } senao {
            pontos_curva = (12 * multiplicador_clima * energia_adv2) / 10000
        }
        pontos_adv2 = pontos_adv2 + pontos_curva
        energia_adv2 = energia_adv2 - u.sorteia(1, 2)
        se (energia_adv2 < 20) energia_adv2 = 20

        // Adversario 3 - Trapaceiro X (mais afetado pelo clima)
        inteiro mult_trap = (multiplicador_clima * 90) / 100  // 90% do multiplicador normal
        inteiro pontos_trap = (10 * mult_trap * energia_adv3) / 10000
        pontos_adv3 = pontos_adv3 + pontos_trap
        energia_adv3 = energia_adv3 - u.sorteia(2, 4) // Perde mais energia por trapacear
        se (energia_adv3 < 15) energia_adv3 = 15
    }
    
    funcao mostrarStatusJogador() {
        escreva("💪 Energia: ", energia_jogador, "% | 🔥 Momentum: ", momentum_jogador, " | 🎯 Sequência: ", sequencia_boa, "\n")
    }

    funcao pitStopMelhorado() {
        inteiro opcao
        escreva("\n🔧 ", nome_jogador, ", deseja fazer pit stop?\n")
        escreva("1. Não (conserva energia atual)\n")
        escreva("2. Pneus (+12 pts, +15 energia)\n")
        escreva("3. Combustível (+25 pts, +10 energia)\n")
        escreva("4. Setup completo (+40 pts, +25 energia, +2 momentum)\n")
        escreva("5. Estratégia agressiva (+15 pts, -10 energia, +5 momentum)\n")
        escreva("Escolha: ")
        leia(opcao)

        escolha(opcao) {
            caso 1:
                escreva("Você decidiu não fazer pit stop.\n")
                pare
            caso 2:
                pontos_jogador = pontos_jogador + 12
                energia_jogador = energia_jogador + 15
                se (energia_jogador > 100) energia_jogador = 100
                pitstop_jogador = verdadeiro
                sequencia_boa = sequencia_boa + 1
                escreva("🏎️ Pneus trocados! +12 pontos, +15 energia\n")
                pare
            caso 3:
                pontos_jogador = pontos_jogador + 25
                energia_jogador = energia_jogador + 10
                se (energia_jogador > 100) energia_jogador = 100
                pitstop_jogador = verdadeiro
                sequencia_boa = sequencia_boa + 1
                escreva("⛽ Combustível abastecido! +25 pontos, +10 energia\n")
                pare
            caso 4:
                pontos_jogador = pontos_jogador + 40
                energia_jogador = energia_jogador + 25
                momentum_jogador = momentum_jogador + 2
                se (energia_jogador > 100) energia_jogador = 100
                pitstop_jogador = verdadeiro
                sequencia_boa = sequencia_boa + 2
                escreva("🔧 Setup completo! +40 pontos, +25 energia, +2 momentum\n")
                pare
            caso 5:
                pontos_jogador = pontos_jogador + 15
                energia_jogador = energia_jogador - 10
                momentum_jogador = momentum_jogador + 5
                se (energia_jogador < 0) energia_jogador = 0
                pitstop_jogador = verdadeiro
                sequencia_boa = sequencia_boa + 1
                escreva("⚡ Estratégia agressiva! +15 pontos, -10 energia, +5 momentum\n")
                pare
            caso contrario:
                escreva("Opção inválida! Sem pit stop.\n")
                pare
        }
    }

    // Pit stop adversário 3 com penalidade - MELHORADO
    funcao pitStopAdversario() {
        pontos_adv3 = pontos_adv3 + 35
        pontos_adv3 = pontos_adv3 - 8 // Penalidade maior por tempo perdido
        energia_adv3 = energia_adv3 + 20
        se (energia_adv3 > 100) energia_adv3 = 100
        pitstop_adv3 = verdadeiro
        escreva("😈 Trapaceiro X fez pit stop! (+35 pts, -8 pts penalidade)\n")
    }

    funcao aplicarArmadilhasMelhoradas() {
        inteiro chance_jogador = u.sorteia(1, 100)
        inteiro chance_adv1 = u.sorteia(1, 100)
        inteiro chance_adv2 = u.sorteia(1, 100)
        
        // Trapaceiro X sempre coloca armadilhas mas com penalidades maiores
        inteiro chance_trapaceiro_colocar = u.sorteia(1, 100)
        se (chance_trapaceiro_colocar <= 85) {
            pontos_adv3 = pontos_adv3 - 12 // Penalidade maior
            energia_adv3 = energia_adv3 - 5  // Perde energia também
            escreva("😈 Trapaceiro X colocou armadilhas na pista! (-12 pts, -5 energia)\n")
            
            // Chance de atingir outros pilotos baseada no clima
            inteiro chance_base = 50
            se (clima_atual == "chuva") chance_base = 65
            se (clima_atual == "neblina") chance_base = 70
            
            // Verifica se jogador é atingido
            se (desviador_jogador == falso e chance_jogador <= chance_base) {
                inteiro penalidade = u.sorteia(8, 15)
                pontos_jogador = pontos_jogador - penalidade
                energia_jogador = energia_jogador - 10
                momentum_jogador = 0 // Perde todo momentum
                sequencia_boa = 0    // Quebra sequência
                escreva(nome_jogador, " foi atingido por uma armadilha! (-", penalidade, " pts, -10 energia)\n")
            } senao se (desviador_jogador == verdadeiro e chance_jogador <= chance_base) {
                momentum_jogador = momentum_jogador + 2 // Ganha momentum por desviar
                sequencia_boa = sequencia_boa + 1
                escreva(nome_jogador, " desviou de uma armadilha! (Desviador ativo, +2 momentum)\n")
            }
            
            // Adversários
            se (chance_adv1 <= chance_base) {
                inteiro penalidade = u.sorteia(8, 12)
                pontos_adv1 = pontos_adv1 - penalidade
                energia_adv1 = energia_adv1 - 8
                escreva("⚡ Relâmpago Max foi atingido! (-", penalidade, " pts, -8 energia)\n")
            }
            
            se (chance_adv2 <= chance_base) {
                inteiro penalidade = u.sorteia(8, 12)
                pontos_adv2 = pontos_adv2 - penalidade
                energia_adv2 = energia_adv2 - 8
                escreva("🎯 Curva Veloz foi atingido! (-", penalidade, " pts, -8 energia)\n")
            }
        }
    }

    funcao sistemaUltrapassagemMelhorado() {
        escreva("\n🏎️ OPORTUNIDADE DE ULTRAPASSAGEM! 🏎️\n")
        escreva("Sua energia: ", energia_jogador, "% | Momentum: ", momentum_jogador, "\n")
        escreva("1. Ultrapassagem AGRESSIVA (alto risco/recompensa)\n")
        escreva("2. Ultrapassagem ESTRATÉGICA (baseada em energia)\n")
        escreva("3. Ultrapassagem SEGURA (baixo risco)\n")
        escreva("4. Manter posição e conservar energia\n")
        escreva("Escolha: ")
        
        inteiro opcao
        leia(opcao)
        
        escolha(opcao) {
            caso 1: // Agressiva
                inteiro chance_base = 45
                se (energia_jogador >= 70) chance_base = chance_base + 15
                se (momentum_jogador >= 5) chance_base = chance_base + 10
                se (clima_atual == "chuva") chance_base = chance_base - 15
                se (clima_atual == "neblina") chance_base = chance_base - 20
                
                inteiro chance = u.sorteia(1, 100)
                se (chance <= chance_base) {
                    inteiro bonus = u.sorteia(20, 30)
                    pontos_jogador = pontos_jogador + bonus
                    momentum_jogador = momentum_jogador + 3
                    sequencia_boa = sequencia_boa + 1
                    energia_jogador = energia_jogador - 8
                    escreva("🚀 ULTRAPASSAGEM ESPETACULAR! +", bonus, " pontos, +3 momentum!\n")
                } senao {
                    inteiro penalidade = u.sorteia(15, 25)
                    pontos_jogador = pontos_jogador - penalidade
                    energia_jogador = energia_jogador - 15
                    momentum_jogador = 0
                    sequencia_boa = 0
                    escreva("💥 ULTRAPASSAGEM FALHOU! -", penalidade, " pontos, -15 energia!\n")
                }
                pare
                
            caso 2: // Estratégica
                inteiro chance_base = 60
                se (energia_jogador >= 80) chance_base = 80
                se (energia_jogador <= 40) chance_base = 40
                se (momentum_jogador >= 3) chance_base = chance_base + 10
                
                inteiro chance = u.sorteia(1, 100)
                se (chance <= chance_base) {
                    inteiro bonus = u.sorteia(12, 18)
                    pontos_jogador = pontos_jogador + bonus
                    momentum_jogador = momentum_jogador + 2
                    sequencia_boa = sequencia_boa + 1
                    energia_jogador = energia_jogador - 5
                    escreva("🎯 Ultrapassagem calculada! +", bonus, " pontos, +2 momentum!\n")
                } senao {
                    inteiro penalidade = u.sorteia(5, 10)
                    pontos_jogador = pontos_jogador - penalidade
                    energia_jogador = energia_jogador - 8
                    escreva("⚠️ Ultrapassagem não deu certo. -", penalidade, " pontos, -8 energia\n")
                }
                pare
                
            caso 3: // Segura
                pontos_jogador = pontos_jogador + 8
                momentum_jogador = momentum_jogador + 1
                sequencia_boa = sequencia_boa + 1
                energia_jogador = energia_jogador - 2
                escreva("✅ Ultrapassagem segura realizada! +8 pontos, +1 momentum!\n")
                pare
                
            caso 4: // Conservar
                energia_jogador = energia_jogador + 5
                se (energia_jogador > 100) energia_jogador = 100
                escreva("🔋 Você conservou energia! +5 energia\n")
                pare
                
            caso contrario:
                escreva("Opção inválida! Mantendo posição.\n")
                pare
        }
        
        // Ultrapassagens dos adversários (automáticas) - MELHORADAS
        ultrapassagemAdversariosMelhorada()
        
        // Mostra posição atual após ultrapassagem
        mostrarPosicaoAtual()
    }

    funcao mostrarPosicaoAtual() {
        escreva("\n📊 POSIÇÃO ATUAL:\n")
        
        // Determina posições manualmente para evitar problemas com arrays
        se (pontos_jogador >= pontos_adv1 e pontos_jogador >= pontos_adv2 e pontos_jogador >= pontos_adv3) {
            escreva("1º: ", nome_jogador, " (", pontos_jogador, " pts)\n")
            // Determina 2º, 3º e 4º lugares
            se (pontos_adv1 >= pontos_adv2 e pontos_adv1 >= pontos_adv3) {
                escreva("2º: Relâmpago Max (", pontos_adv1, " pts)\n")
                se (pontos_adv2 >= pontos_adv3) {
                    escreva("3º: Curva Veloz (", pontos_adv2, " pts)\n")
                    escreva("4º: Trapaceiro X (", pontos_adv3, " pts)\n")
                } senao {
                    escreva("3º: Trapaceiro X (", pontos_adv3, " pts)\n")
                    escreva("4º: Curva Veloz (", pontos_adv2, " pts)\n")
                }
            } senao se (pontos_adv2 >= pontos_adv3) {
                escreva("2º: Curva Veloz (", pontos_adv2, " pts)\n")
                se (pontos_adv1 >= pontos_adv3) {
                    escreva("3º: Relâmpago Max (", pontos_adv1, " pts)\n")
                    escreva("4º: Trapaceiro X (", pontos_adv3, " pts)\n")
                } senao {
                    escreva("3º: Trapaceiro X (", pontos_adv3, " pts)\n")
                    escreva("4º: Relâmpago Max (", pontos_adv1, " pts)\n")
                }
            } senao {
                escreva("2º: Trapaceiro X (", pontos_adv3, " pts)\n")
                se (pontos_adv1 >= pontos_adv2) {
                    escreva("3º: Relâmpago Max (", pontos_adv1, " pts)\n")
                    escreva("4º: Curva Veloz (", pontos_adv2, " pts)\n")
                } senao {
                    escreva("3º: Curva Veloz (", pontos_adv2, " pts)\n")
                    escreva("4º: Relâmpago Max (", pontos_adv1, " pts)\n")
                }
            }
        } senao {
            // Jogador não está em primeiro - mostra posições dos adversários primeiro
            se (pontos_adv1 >= pontos_adv2 e pontos_adv1 >= pontos_adv3) {
                escreva("1º: Relâmpago Max (", pontos_adv1, " pts)\n")
            } senao se (pontos_adv2 >= pontos_adv3) {
                escreva("1º: Curva Veloz (", pontos_adv2, " pts)\n")
            } senao {
                escreva("1º: Trapaceiro X (", pontos_adv3, " pts)\n")
            }
            
            // Mostra posição do jogador
            inteiro posicao_jogador = 1
            se (pontos_adv1 > pontos_jogador) posicao_jogador = posicao_jogador + 1
            se (pontos_adv2 > pontos_jogador) posicao_jogador = posicao_jogador + 1
            se (pontos_adv3 > pontos_jogador) posicao_jogador = posicao_jogador + 1
            
            escreva(posicao_jogador, "º: ", nome_jogador, " (", pontos_jogador, " pts)\n")
            escreva("(Posições completas calculadas...)\n")
        }
        escreva("\n")
    }

    funcao ultrapassagemAdversariosMelhorada() {
        // Relâmpago Max (mais agressivo, afetado por energia)
        inteiro chance_adv1 = u.sorteia(1, 100)
        se (chance_adv1 <= 75) {
            inteiro chance_sucesso = 50
            se (energia_adv1 >= 70) chance_sucesso = 65
            se (clima_atual == "chuva") chance_sucesso = chance_sucesso - 20
            
            se (u.sorteia(1, 100) <= chance_sucesso) {
                inteiro bonus = u.sorteia(15, 20)
                bonus = (bonus * multiplicador_clima) / 100
                pontos_adv1 = pontos_adv1 + bonus
                energia_adv1 = energia_adv1 - 10
                escreva("⚡ Relâmpago Max: ultrapassagem arriscada! (+", bonus, " pts)\n")
            } senao {
                inteiro penalidade = u.sorteia(10, 15)
                pontos_adv1 = pontos_adv1 - penalidade
                energia_adv1 = energia_adv1 - 15
                escreva("💨 Relâmpago Max: falhou na ultrapassagem! (-", penalidade, " pts)\n")
            }
        }
        
        // Curva Veloz (mais estratégico)
        inteiro chance_adv2 = u.sorteia(1, 100)
        se (chance_adv2 <= 60) {
            inteiro bonus = u.sorteia(10, 14)
            bonus = (bonus * multiplicador_clima) / 100
            pontos_adv2 = pontos_adv2 + bonus
            energia_adv2 = energia_adv2 - 5
            escreva("🎯 Curva Veloz: ultrapassagem calculada! (+", bonus, " pts)\n")
        }
        
        // Trapaceiro X (sempre tenta trapacear com penalidades maiores)
        inteiro chance_adv3 = u.sorteia(1, 100)
        se (chance_adv3 <= 85) {
            inteiro chance_trapaca = u.sorteia(1, 100)
            se (chance_trapaca <= 55) {
                inteiro bonus = u.sorteia(12, 18)
                inteiro penalidade = u.sorteia(8, 12)
                pontos_adv3 = pontos_adv3 + bonus - penalidade
                energia_adv3 = energia_adv3 - 8
                escreva("😈 Trapaceiro X: métodos duvidosos! (+", bonus, " pts, -", penalidade, " pts penalidade)\n")
            } senao {
                inteiro penalidade = u.sorteia(8, 15)
                pontos_adv3 = pontos_adv3 - penalidade
                energia_adv3 = energia_adv3 - 10
                escreva("🚫 Trapaceiro X: pego trapaceando! (-", penalidade, " pts)\n")
            }
        }
    }
    
    funcao mostrarPlacarParcial(inteiro volta) {
        escreva("\n🏁 === PLACAR PARCIAL VOLTA ", volta, " === 🏁\n")
        escreva("🌦️ Clima: ", clima_atual, " (", multiplicador_clima, "% performance)\n\n")
        
        escreva(nome_jogador, ": ", pontos_jogador, " pts")
        escreva(" | ⚡", energia_jogador, "% | 🔥", momentum_jogador, " | 🎯", sequencia_boa, "\n")
        
        escreva("Relâmpago Max: ", pontos_adv1, " pts | ⚡", energia_adv1, "%\n")
        escreva("Curva Veloz: ", pontos_adv2, " pts | ⚡", energia_adv2, "%\n")
        escreva("Trapaceiro X: ", pontos_adv3, " pts | ⚡", energia_adv3, "%\n")
        escreva("════════════════════════════════════════\n")
    }
    
    funcao mostrarRanking() {
        escreva("\n\n🏆 === PÓDIO FINAL === 🏆\n")
        
        // Cria arrays para ordenação manual (compatível com Portugol)
        cadeia nomes[4]
        inteiro pontos[4]
        
        nomes[0] = nome_jogador
        pontos[0] = pontos_jogador
        nomes[1] = "Relâmpago Max"
        pontos[1] = pontos_adv1
        nomes[2] = "Curva Veloz"
        pontos[2] = pontos_adv2
        nomes[3] = "Trapaceiro X"
        pontos[3] = pontos_adv3

        // Bubble sort para ordenar por pontos (compatível com Portugol)
        para (inteiro i = 0; i < 3; i++) {
            para (inteiro j = i + 1; j < 4; j++) {
                se (pontos[j] > pontos[i]) {
                    inteiro tempPontos = pontos[i]
                    cadeia tempNome = nomes[i]
                    pontos[i] = pontos[j]
                    nomes[i] = nomes[j]
                    pontos[j] = tempPontos
                    nomes[j] = tempNome
                }
            }
        }

        // Mostra ranking final correto
        para (inteiro i = 0; i < 4; i++) {
            escreva((i+1), "º lugar: ", nomes[i], " - ", pontos[i], " pontos\n")
        }
        
        se (nomes[0] == nome_jogador) {
            escreva("\n🎉 ESTATÍSTICAS DA VITÓRIA:\n")
            escreva("⚡ Energia final: ", energia_jogador, "%\n")
            escreva("🔥 Momentum máximo: ", momentum_jogador, "\n")
            escreva("🎯 Sequência de consistência: ", sequencia_boa, "\n\n")
            
            escreva("****:.........................................................==......................:****\n")
            escreva("%%%%:................................................=========++=========.............:%%%%\n")
            escreva("%%%%:................................................=========++=========.............:%%%%\n")
            escreva("====.................................................===.....=++=.....===..............====\n")
            escreva("====.........................................................::::......................=-==\n")
            escreva("%%%%:................................................000000..::::..000000.............:%%%%\n")
            escreva("%%%%:...............................................00000000.::::.00000000............:%%%%\n")
            escreva("=--=.................................................000000..=++=..000000..............---=\n")
            escreva("===.........................................................:-::......................====\n")
            escreva("===-........................................................::-::.....................:+++=\n")
            escreva("%%%%:.......................................................:-==-:....................:%%%%\n")
            escreva("%%%%:.......................................................-=====....................:%%%%\n")
            escreva("====...................................................:::.:=....=.::::................====\n")
            escreva("====...................................................-=====....-====:................====\n")
            escreva("%%%%:.................................................:=+=-==....-===+=...............:%%%%\n")
            escreva("%%%%:.................................................:=++===....-==++=...............:%%%%\n")
            escreva("####:.................................................:=++===:::-===++=...............:####\n")
            escreva("====...................................................-++=-====+===++-................====\n")
            escreva("===-...................................................-=+====::+=-=+=:................---=\n")
            escreva("%%%%:...................................................=++===::===++=................:%%%%\n")
            escreva("%%%%:....................................................=+=-=++=-=++.................:%%%%\n")
            escreva("====.....................................................:+==-++===+:..................====\n")
            escreva("====.....................................................:===-==-==-:..................====\n")
            escreva("%%%%:..................................................000000::::000000...............:%%%%\n")
            escreva("%%%%:.................................................0000000::::0000000..............:%%%%\n")
            escreva("****:..................................................000000::::000000...............:****\n")
            escreva("====......................................................:=--===-=:...................====\n")
            escreva("=---......................................................+*=+*#*++=...................====\n")
            escreva("%%%%:.................................................................................:%%%%\n")
            escreva("%%%%:.................................................................................:%%%%\n")
            escreva("====.........................==........................................................====\n")
            escreva("====........................=++=.......................................................====\n")
            escreva("%%%%:...............=========++==========.............................................:%%%%\n")
            escreva("%%%%:...............========-++==========.............................................:%%%%\n")
            escreva("++++:...............==......-++=.......==.............................................:++++\n")
            escreva("====........................-++=.......................................................====\n")
            escreva("====................000000..-++=..000000...............................................====\n")
            escreva("%%%%:..............00000000.-++=.00000000.............................................:%%%%\n")
            escreva("%%%%:...............000000..=++=..000000..............................................:%%%%\n")
            escreva("====.......................:=++=-......................................................====\n")
            escreva("====.......................:=++=-......................................................====\n")
            escreva("%%%%:......................-=++==.....................................................:%%%%\n")
            escreva("%%%%:......................==++==:....................................................:%%%%\n")

            // Aguarda 2 segundos
            u.aguarde(2000)
            
            // Segunda parte da animação
            escreva("%%%%:.................................................................................:%%%%\n")
            escreva("%%%%:.................................................................................:%%%%\n")
            escreva("====.........................==....................................==..................====\n")
            escreva("====........................=++=..................................=++=.................====\n")
            escreva("%%%%:...............=========++==========................==========++==========.......:%%%%\n")
            escreva("%%%%:...............========-++==========................=========-++==========.......:%%%%\n")
            escreva("++++:...............==......-++=.......==................==.......-++=......==........:++++\n")
            escreva("====........................-++=..................................-++=.................====\n")
            escreva("====................000000..-++=..000000..................000000..-++=..000000.........====\n")
            escreva("%%%%:..............00000000.-++=.00000000................00000000.-++=.00000000.......:%%%%\n")
            escreva("%%%%:...............000000..=++=..000000..................000000..=++=..000000........:%%%%\n")
            escreva("====.......................:=++=-................................:=++=-................====\n")
            escreva("====.......................:=++=-................................:=++=-................====\n")
            escreva("%%%%:......................-=++==................................-=++==...............:%%%%\n")
            escreva("%%%%:......................==++==:...............................==++==:..............:%%%%\n")
            escreva("++++:......................=:..:=:...............................=:..:=:..............:++++\n")
            escreva("====.................:::::==:..:==::::::...................:::::==:..:==::::::........:====\n")
            escreva("====..................======:..:======:.....................======:..:======:.........:====\n")
            escreva("%%%%:................==+=-==:..:==-==+=....................==+=-==:..:==-==+=.........:%%%%\n")
            escreva("%%%%:................-=+=-==::::==-==+=....................-=+=-==::::==-==+=.........:%%%%\n")
            escreva("====.................-=+==========-=+==....................-=+==========-=+==..........====\n")
            escreva("====.................:=+==-==::==--=+=-....................:=+==-==::==--=+=-..........====\n")
            escreva("%%%%:.................==+=-======-==+=:.....................==+=-======-==+=:.........:%%%%\n")
            escreva("%%%%:.................:=+==-=====-===-......................:=+==-=====-===-..........:%%%%\n")
            escreva("%@@@:..................-+==-====--=+=........................-+==-====--=+=...........:@@@%\n")
            escreva("====....................=+=--==--==+:.........................=+=--==--==+:...........:====\n")
            escreva("====.....................+==--=--==:...........................+==--=--==:............:====\n")
            escreva("%%%%:......................+=====+..... .........................+=====+..............:%%%%\n")
            escreva("%%%%:..................000000---000000.......................000000---000000..........:%%%%\n")
            escreva("====..................0000000---0000000.....................0000000---0000000.........:====\n")
            escreva("====...................000000---000000.......................000000---000000..........:====\n")
            escreva("****:....................==-+#%%+-=-...........................==-+#%%+-=-............:****\n")
            escreva("%%%%:....................++==++++=+=...........................++==++++=+=............:%%%%\n")
            escreva("%%%%:....................-.........:..........................-.........:.............:%%%%\n")
            escreva("====.....................-.........:..........................-.........:..............====\n")
            escreva("\n")
            
            // Aguarda mais 2 segundos
            u.aguarde(2000)
            
            // Terceira parte da animação
            escreva("\n")
            escreva("%%%%:.................................................................................:%%%%\n")
            escreva("%%%%:.................................................................................:%%%%\n")
            escreva("====.........................==........................................................====\n")
            escreva("====........................=++=.......................................................====\n")
            escreva("%%%%:...............=========++==========.............................................:%%%%\n")
            escreva("%%%%:...............========-++==========.............................................:%%%%\n")
            escreva("++++:...............==......-++=.......==.............................................:++++\n")
            escreva("====........................-++=.......................................................====\n")
            escreva("====................000000..-++=..000000...............................................====\n")
            escreva("%%%%:..............00000000.-++=.00000000.............................................:%%%%\n")
            escreva("%%%%:...............000000..=++=..000000..............................................:%%%%\n")
            escreva("====.......................:=++=-......................................................====\n")
            escreva("====.......................:=++=-......................................................====\n")
            escreva("%%%%:......................-=++==.....................................................:%%%%\n")
            escreva("%%%%:......................==++==:....................................................:%%%%\n")
            escreva("++++:......................=:..:=:....................................................:++++\n")
            escreva("====.................:::::==:..:==::::::...............................................====\n")
            escreva("====..................======:..:======:...............................................:====\n")
            escreva("%%%%:................==+=-==:..:==-==+=...............................................:%%%%\n")
            escreva("%%%%:................-=+=-==::::==-==+=...............................................:%%%%\n")
            escreva("====.................-=+==========-=+==................................................====\n")
            escreva("====.................:=+==-==::==--=+=-................................................====\n")
            escreva("%%%%:.................==+=-======-==+=:...............................................:%%%%\n")
            escreva("%%%%:.................:=+==-=====-===-................................................:%%%%\n")
            escreva("%@@@:..................-+==-====--=+=.................................................:@@@%\n")
            escreva("====....................=+=--==--==+:..................................................====\n")
            escreva("====.....................+==--=--==:...................................................====\n")
            escreva("%%%%:......................+=====+....................................................:%%%%\n")
            escreva("%%%%:..................000000---000000................................................:%%%%\n")
            escreva("====..................0000000---0000000...............................................:====\n")
            escreva("====...................000000---000000.................................................====\n")
            escreva("****:....................==-+#%%+-=-..........................==......................:****\n")
            escreva("%%%%:....................++==++++=+=.................=========++=========.............:%%%%\n")
            escreva("%%%%:....................-.........:.................=========++=========.............:%%%%\n")
            escreva("====.....................-.........:.................===.....=++=.....===..............====\n")
            escreva("====.........................................................::::......................=-==\n")
            escreva("%%%%:................................................000000..::::..000000.............:%%%%\n")
            escreva("%%%%:...............................................00000000.::::.00000000............:%%%%\n")
            escreva("=--=.................................................000000..=++=..000000..............---=\n")
            escreva("====.........................................................:-::......................====\n")
            escreva("===-........................................................::-::.....................:+++=\n")
            escreva("%%%%:.......................................................:-==-:....................:%%%%\n")
            escreva("%%%%:.......................................................-=====....................:%%%%\n")
            escreva("====...................................................:::.:=....=.::::................====\n")
            escreva("====...................................................-=====....-====:................====\n")
            escreva("%%%%:.................................................:=+=-==....-===+=...............:%%%%\n")
            escreva("%%%%:.................................................:=++===....-==++=...............:%%%%\n")
            escreva("####:.................................................:=++===:::-===++=...............:####\n")
            escreva("====...................................................-++=-====+===++-................====\n")
            escreva("===-...................................................-=+====::+=-=+=:................---=\n")
            escreva("%%%%:...................................................=++===::===++=................:%%%%\n")
            escreva("%%%%:....................................................=+=-=++=-=++.................:%%%%\n")
            escreva("====.....................................................:+==-++===+:..................====\n")
            escreva("====.....................................................:===-==-==-:..................====\n")
            escreva("%%%%:..................................................000000::::000000...............:%%%%\n")
            escreva("%%%%:.................................................0000000::::0000000..............:%%%%\n")
            escreva("****:..................................................000000::::000000...............:****\n")
            escreva("====......................................................:=--===-=:...................====\n")
            escreva("=---......................................................+*=+*#*++=...................====\n")
            escreva("%%%%:.................................................................................:%%%% \n")
            escreva("                                                                                           \n")

            u.aguarde(4000)

            escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@#################################@@@@@@@@@@@@@\n")
            escreva("@@@@@%=------:::::::::::::::::::::::::::::::::::------=%@@@@\n")
            escreva("@@@@:::::::::::::::::::::::::::::::::::::::::::::::::::::@@@\n")
            escreva("@@@*::@@@@@@%:::::::::::::::::::::::::::::::::::#@@@@@@::+@@\n")
            escreva("@@@#::%@@@@@%:::::::::::::::::@.::::::::::::::::#@@@@@@::*@@\n")
            escreva("@@@@::*@@@@@%::::::::::::::::%@%::::::::::::::::%@@@@@*::%@@\n")
            escreva("@@@@-::@@@@@@:::::::::::.:::*@@@*:::::::::::::::@@@@@@:::@@@\n")
            escreva("@@@@%::+@@@@@-:::::::::=@@@@@@@@@@@@@=::::::::::@@@@@=::@@@@\n")
            escreva("@@@@@#::+@@@@*::::::::::::@@@@@@@@@::::::::::::+@@@@+::#@@@@\n")
            escreva("@@@@@@#::-@@@@::::::::::::+@@@@@@@+::::::::::::@@@@-::#@@@@@\n")
            escreva("@@@@@@@@:::#@@#:::::::::::@@@+:+@@@:::::::::::#@@#:::@@@@@@@\n")
            escreva("@@@@@@@@@#:::+@=:::::::::==:::::::==:::::::::=@+:::#@@@@@@@@\n")
            escreva("@@@@@@@@@@@%:::::::::::::::::::::::::::::::::::::%@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@#:::::::::::::::::::::::::::::::#@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@*:::::::::::::::::::::::*@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@@@#:::::::::::::::::::#@@@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@@@@@@=:::::::::::::=@@@@@@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@:::::::::@@@@@@@@@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@-:::::::-@@@@@@@@@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@@@@@@@@%:::::::::@@@@@@@@@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@@@@@@@@%:::::::::@@@@@@@@@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@:::::::::@@@@@@@@@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@@@@@@@@+:::::::::+@@@@@@@@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@@@@@@@=:::::::::::+@@@@@@@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@@:::::::::::::::::::::::@@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@-::::::::::::::::::::::::@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@:::::::::::::::::::::::::@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@:::::::::::::::::::::::::@@@@@@@@@@@@@@@@@\n")
            escreva("@@@@@@@@@@@@@@@@@@:::::::::::::::::::::::::@@@@@@@@@@@@@@@@@\n")
            escreva("\n🏆 PARABÉNS ", nome_jogador, "! VOCÊ VENCEU A CORRIDA! 🏆\n")
            
        } senao {
            escreva("\n📊 SUAS ESTATÍSTICAS:\n")
            escreva("⚡ Energia final: ", energia_jogador, "%\n")
            escreva("🔥 Momentum final: ", momentum_jogador, "\n")
            escreva("🎯 Sequência final: ", sequencia_boa, "\n\n")
            
            escreva(nome_jogador, ", você não venceu desta vez.\n")
            escreva("💪 Mas suas habilidades melhoraram muito!\n")
            escreva("🏁 Treine mais para dominar o novo sistema de pontos!\n")
            escreva("⚡ Dica: Gerencie melhor sua energia e construa momentum!\n")
        }
    }
}
