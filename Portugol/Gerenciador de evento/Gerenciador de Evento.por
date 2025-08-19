programa
{
    // Importa biblioteca matemática para usar arredondamento
    inclua biblioteca Matematica --> mat
 
    funcao inicio()
    {
        //DECLARAÇÃO E INICIALIZAÇÃO DE VARIÁVEIS
       
        // Variáveis principais para controle de opções, valores e participantes
        inteiro opcao, opcaoEvento, quantidade, temComida
        cadeia dataHora, nomeEvento, localEvento
        real valorPrincipal, valorComida, valorPorPessoa, valorComidaPorPessoa, totalArrecadado, totalPendente
       
        // Vetores para armazenar dados de até 30 participantes
        cadeia nomes[30]
        logico vaiComer[30]
        logico pagou[30]
        real valorIndividual[30]
 
        // Contador de participantes da comida e índice de laço
        inteiro qtdComida = 0
        inteiro i, participanteRemover
 
        // Variável para controlar se já foi criado um evento
        logico eventoCriado = falso
 
        // === Estrutura de repetição principal ===
        enquanto (verdadeiro)
        {
            // === Menu principal ===
            escreva("\n========== GERENCIADOR DE EVENTOS ============\n")
            escreva("| 1 - SOBRE O SISTEMA                        |\n")
            escreva("| 2 - CRIAR NOVO EVENTO                      |\n")
            escreva("| 3 - LISTAR PARTICIPANTES                   |\n")
            escreva("| 4 - ADICIONAR PARTICIPANTE                 |\n")
            escreva("| 5 - REMOVER PARTICIPANTE                   |\n")
            escreva("| 6 - REGISTRAR PAGAMENTO                    |\n")
            escreva("| 7 - RELATÓRIO FINANCEIRO                   |\n")
            escreva("| 8 - CONTATO                                |\n")
            escreva("| 0 - SAIR                                   |\n")
            escreva("==============================================\n\n")
            escreva("Escolha uma opção: ")
            leia(opcao)
 
            // === Condicional para tratar cada opção do menu ===
            escolha (opcao)
            {
                caso 1:
                    // Exibe informações sobre o sistema
                    escreva("\n--- SOBRE O SISTEMA ---\n")
                    escreva("Sistema para organizar eventos e dividir custos de forma justa!\n")
                    escreva("Funcionalidades:\n")
                    escreva("- Criação de eventos diversos (churrasco, festa, viagem, etc.)\n")
                    escreva("- Divisão automática de custos\n")
                    escreva("- Controle de pagamentos\n")
                    escreva("- Relatórios financeiros\n")
                    escreva("- Remoção de participantes\n\n")
                    pare
 
                caso 2:
                    // Criação de evento com escolha de tipo
                    escreva("\n--- CRIAR NOVO EVENTO ---\n")
                    escreva("ESCOLHA O TIPO DE EVENTO:\n")
                    escreva("1 - Churrasco\n")
                    escreva("2 - Festa de Aniversário\n")
                    escreva("3 - Viagem/Passeio\n")
                    escreva("4 - Evento Esportivo\n")
                    escreva("5 - Outro (personalizado)\n")
                    leia(opcaoEvento)
 
                    escolha (opcaoEvento)
                    {
                        caso 1:
                            nomeEvento = "Churrasco"
                            escreva("\nData e horário do churrasco: ")
                            leia(dataHora)
                            escreva("Local do churrasco: ")
                            leia(localEvento)
                            escreva("Valor total para carnes e bebidas: R$ ")
                            leia(valorPrincipal)
                            valorComida = 0.0
                            temComida = 1
                            pare
                            
                        caso 2:
                            nomeEvento = "Festa de Aniversário"
                            escreva("\nData e horário da festa: ")
                            leia(dataHora)
                            escreva("Local da festa: ")
                            leia(localEvento)
                            escreva("Valor total (decoração, bolo, etc.): R$ ")
                            leia(valorPrincipal)
                            escreva("Vai ter comida/buffet? (1 - Sim | 2 - Não): ")
                            leia(temComida)
                            se (temComida == 1) {
                                escreva("Valor total para comida/buffet: R$ ")
                                leia(valorComida)
                            } senao {
                                valorComida = 0.0
                            }
                            pare
                            
                        caso 3:
                            nomeEvento = "Viagem/Passeio"
                            escreva("\nData da viagem: ")
                            leia(dataHora)
                            escreva("Destino: ")
                            leia(localEvento)
                            escreva("Valor total (transporte, hospedagem, etc.): R$ ")
                            leia(valorPrincipal)
                            escreva("Vai incluir alimentação? (1 - Sim | 2 - Não): ")
                            leia(temComida)
                            se (temComida == 1) {
                                escreva("Valor total para alimentação: R$ ")
                                leia(valorComida)
                            } senao {
                                valorComida = 0.0
                            }
                            pare
                            
                        caso 4:
                            nomeEvento = "Evento Esportivo"
                            escreva("\nData e horário do evento: ")
                            leia(dataHora)
                            escreva("Local (quadra, campo, etc.): ")
                            leia(localEvento)
                            escreva("Valor total (aluguel do local): R$ ")
                            leia(valorPrincipal)
                            escreva("Vai ter lanche/bebida? (1 - Sim | 2 - Não): ")
                            leia(temComida)
                            se (temComida == 1) {
                                escreva("Valor total para lanche/bebida: R$ ")
                                leia(valorComida)
                            } senao {
                                valorComida = 0.0
                            }
                            pare
                            
                        caso 5:
                            escreva("\nNome do evento: ")
                            leia(nomeEvento)
                            escreva("Data e horário: ")
                            leia(dataHora)
                            escreva("Local: ")
                            leia(localEvento)
                            escreva("Valor principal do evento: R$ ")
                            leia(valorPrincipal)
                            escreva("Tem custo adicional (comida, bebida, etc.)? (1 - Sim | 2 - Não): ")
                            leia(temComida)
                            se (temComida == 1) {
                                escreva("Valor do custo adicional: R$ ")
                                leia(valorComida)
                            } senao {
                                valorComida = 0.0
                            }
                            pare
                            
                        caso contrario:
                            escreva("\nOpção de evento inválida.\n")
                            pare
                    }
                    
                    se (opcaoEvento >= 1 e opcaoEvento <= 5) {
                        // Número de participantes
                        escreva("\nQuantidade de pessoas que vão participar: ")
                        leia(quantidade)
                        qtdComida = 0
 
                        // Coleta nome dos participantes e se vão consumir o adicional
                        para (i = 0; i < quantidade; i++) {
                            escreva("Nome do participante ", i + 1, ": ")
                            leia(nomes[i])
                            pagou[i] = falso
 
                            se (temComida == 1) {
                                se (opcaoEvento == 1) {
                                    escreva(nomes[i], " vai comer no churrasco? (1 - Sim | 2 - Não): ")
                                } senao {
                                    escreva(nomes[i], " vai consumir o adicional? (1 - Sim | 2 - Não): ")
                                }
                                leia(opcao)
                                se (opcao == 1) {
                                    vaiComer[i] = verdadeiro
                                    qtdComida++
                                } senao {
                                    vaiComer[i] = falso
                                }
                            } senao {
                                vaiComer[i] = falso
                            }
                        }
 
                        // Cálculo dos valores por pessoa
                        valorPorPessoa = mat.arredondar(valorPrincipal / quantidade, 2)
                        se (qtdComida > 0) {
                            valorComidaPorPessoa = mat.arredondar(valorComida / qtdComida, 2)
                        } senao {
                            valorComidaPorPessoa = 0.0
                        }
                        
                        // Calcula valor individual de cada participante
                        para (i = 0; i < quantidade; i++) {
                            valorIndividual[i] = valorPorPessoa
                            se (vaiComer[i]) {
                                valorIndividual[i] = valorIndividual[i] + valorComidaPorPessoa
                            }
                        }
 
                        // Exibe resumo do Evento criado
                        escreva("\n===== RESUMO DO EVENTO =====\n")
                        escreva("Evento: ", nomeEvento, "\n")
                        escreva("Data/Horário: ", dataHora, "\n")
                        escreva("Local: ", localEvento, "\n")
                        escreva("Valor base por pessoa: R$ ", valorPorPessoa, "\n")
                        se (qtdComida > 0) {
                            escreva("Valor adicional por participante: R$ ", valorComidaPorPessoa, "\n")
                        }
                        escreva("Total de participantes: ", quantidade, "\n")
                        escreva("============================\n\n")
                        eventoCriado = verdadeiro
                    }
                    pare
 
                caso 3:
                    // Lista os participantes, valores e status de pagamento
                    se (nao eventoCriado) {
                        escreva("\nNenhum evento foi criado ainda. Crie um evento primeiro.\n")
                        pare
                    }
 
                    escreva("\n=== LISTA DE PARTICIPANTES ===\n")
                    escreva("Evento: ", nomeEvento, " - ", dataHora, "\n")
                    escreva("Local: ", localEvento, "\n\n")
                    para (i = 0; i < quantidade; i++) {
                        escreva(i+1, " - ", nomes[i])
                        escreva(" | Valor: R$ ", valorIndividual[i])
                        escreva(" | Status: ")
                        se (pagou[i]) {
                            escreva("PAGO")
                        } senao {
                            escreva("PENDENTE")
                        }
                        escreva("\n")
                    }
                    escreva("===============================\n")
                    pare
 
                caso 4:
                    // Adiciona novo participante ao evento existente
                    se (nao eventoCriado) {
                        escreva("\nNenhum evento foi criado ainda. Crie um evento primeiro.\n")
                        pare
                    }
                    
                    se (quantidade >= 30) {
                        escreva("\n[ERRO] Limite máximo de 30 participantes atingido!\n")
                        pare
                    }

                    escreva("\n=== ADICIONAR PARTICIPANTE ===\n")
                    escreva("Evento atual: ", nomeEvento, "\n")
                    escreva("Participantes atuais: ", quantidade, "\n\n")
                    
                    escreva("Nome do novo participante: ")
                    leia(nomes[quantidade])
                    pagou[quantidade] = falso

                    se (temComida == 1) {
                        se (nomeEvento == "Churrasco") {
                            escreva(nomes[quantidade], " vai comer no churrasco? (1 - Sim | 2 - Não): ")
                        } senao {
                            escreva(nomes[quantidade], " vai consumir o adicional? (1 - Sim | 2 - Não): ")
                        }
                        leia(opcao)
                        se (opcao == 1) {
                            vaiComer[quantidade] = verdadeiro
                            qtdComida++
                        } senao {
                            vaiComer[quantidade] = falso
                        }
                    } senao {
                        vaiComer[quantidade] = falso
                    }
                    
                    quantidade++
                    
                    // Recalcula os valores
                    valorPorPessoa = mat.arredondar(valorPrincipal / quantidade, 2)
                    se (qtdComida > 0) {
                        valorComidaPorPessoa = mat.arredondar(valorComida / qtdComida, 2)
                    } senao {
                        valorComidaPorPessoa = 0.0
                    }
                    
                    // Recalcula valores individuais
                    para (i = 0; i < quantidade; i++) {
                        valorIndividual[i] = valorPorPessoa
                        se (vaiComer[i]) {
                            valorIndividual[i] = valorIndividual[i] + valorComidaPorPessoa
                        }
                    }
                    
                    escreva("\n[SUCESSO] ", nomes[quantidade-1], " foi adicionado ao evento!\n")
                    escreva("Valores recalculados automaticamente.\n")
                    escreva("Novo valor base por pessoa: R$ ", valorPorPessoa, "\n")
                    se (qtdComida > 0) {
                        escreva("Novo valor adicional: R$ ", valorComidaPorPessoa, "\n")
                    }
                    pare
                    
                caso 5:
                    // Remove participante da lista
                    se (nao eventoCriado) {
                        escreva("\nNenhum evento foi criado ainda. Crie um evento primeiro.\n")
                        pare
                    }
                    
                    se (quantidade <= 1) {
                        escreva("\n[ERRO] Não é possível remover. Deve haver pelo menos 1 participante!\n")
                        pare
                    }

                    escreva("\n=== REMOVER PARTICIPANTE ===\n")
                    escreva("Participantes atuais (1-", quantidade, "):\n")
                    para (i = 0; i < quantidade; i++) {
                        escreva(i+1, " - ", nomes[i], "\n")
                    }
                    escreva("\nDigite o número do participante a remover: ")
                    leia(participanteRemover)

                    se (participanteRemover >= 1 e participanteRemover <= quantidade) {
                        cadeia nomeRemovido = nomes[participanteRemover-1]
                        
                        // Move todos os elementos uma posição para trás
                        para (i = participanteRemover-1; i < quantidade-1; i++) {
                            nomes[i] = nomes[i+1]
                            vaiComer[i] = vaiComer[i+1]
                            pagou[i] = pagou[i+1]
                        }
                        
                        quantidade--
                        
                        // Recalcula os valores
                        qtdComida = 0
                        para (i = 0; i < quantidade; i++) {
                            se (vaiComer[i]) {
                                qtdComida++
                            }
                        }
                        
                        valorPorPessoa = mat.arredondar(valorPrincipal / quantidade, 2)
                        se (qtdComida > 0) {
                            valorComidaPorPessoa = mat.arredondar(valorComida / qtdComida, 2)
                        } senao {
                            valorComidaPorPessoa = 0.0
                        }
                        
                        // Recalcula valores individuais
                        para (i = 0; i < quantidade; i++) {
                            valorIndividual[i] = valorPorPessoa
                            se (vaiComer[i]) {
                                valorIndividual[i] = valorIndividual[i] + valorComidaPorPessoa
                            }
                        }
                        
                        escreva("\n[SUCESSO] ", nomeRemovido, " foi removido do evento!\n")
                        escreva("Valores recalculados automaticamente.\n")
                        escreva("Novo valor base por pessoa: R$ ", valorPorPessoa, "\n")
                        se (qtdComida > 0) {
                            escreva("Novo valor adicional: R$ ", valorComidaPorPessoa, "\n")
                        }
                    } senao {
                        escreva("\n[ERRO] Número de participante inválido!\n")
                    }
                    pare
 
                caso 6:
                    // Registra pagamento de participante específico
                    se (nao eventoCriado) {
                        escreva("\nNenhum evento foi criado ainda. Crie um evento primeiro.\n")
                        pare
                    }

                    inteiro participantePagou
                    escreva("\n=== REGISTRAR PAGAMENTO ===\n")
                    escreva("Participantes disponíveis (1-", quantidade, "):\n")
                    para (i = 0; i < quantidade; i++) {
                        escreva(i+1, " - ", nomes[i], " - R$ ", valorIndividual[i])
                        se (pagou[i]) {
                            escreva(" (JÁ PAGO)")
                        }
                        escreva("\n")
                    }
                    escreva("\nDigite o número do participante que pagou: ")
                    leia(participantePagou)

                    se (participantePagou >= 1 e participantePagou <= quantidade) {
                        se (pagou[participantePagou-1]) {
                            escreva("\n[AVISO] ", nomes[participantePagou-1], " já havia pagado!\n")
                        } senao {
                            pagou[participantePagou-1] = verdadeiro
                            escreva("\n[SUCESSO] Pagamento registrado para: ", nomes[participantePagou-1], "!\n")
                            escreva("Valor pago: R$ ", valorIndividual[participantePagou-1], "\n")
                        }
                    } senao {
                        escreva("\n[ERRO] Número de participante inválido!\n")
                    }
                    pare

                caso 7:
                    // Relatório financeiro completo
                    se (nao eventoCriado) {
                        escreva("\nNenhum evento foi criado ainda. Crie um evento primeiro.\n")
                        pare
                    }
                    
                    totalArrecadado = 0.0
                    totalPendente = 0.0
                    inteiro qtdPagos = 0, qtdPendentes = 0
                    
                    para (i = 0; i < quantidade; i++) {
                        se (pagou[i]) {
                            totalArrecadado = totalArrecadado + valorIndividual[i]
                            qtdPagos++
                        } senao {
                            totalPendente = totalPendente + valorIndividual[i]
                            qtdPendentes++
                        }
                    }
                    
                    escreva("\n========== RELATÓRIO FINANCEIRO ==========\n")
                    escreva("Evento: ", nomeEvento, "\n")
                    escreva("Data/Horário: ", dataHora, "\n")
                    escreva("Local: ", localEvento, "\n\n")
                    
                    escreva("--- RESUMO GERAL ---\n")
                    escreva("Total de participantes: ", quantidade, "\n")
                    escreva("Custo total do evento: R$ ", valorPrincipal + valorComida, "\n")
                    escreva("Valor base por pessoa: R$ ", valorPorPessoa, "\n")
                    se (valorComidaPorPessoa > 0) {
                        escreva("Valor adicional: R$ ", valorComidaPorPessoa, "\n")
                    }
                    
                    escreva("\n--- STATUS DE PAGAMENTOS ---\n")
                    escreva("Participantes que pagaram: ", qtdPagos, "\n")
                    escreva("Participantes pendentes: ", qtdPendentes, "\n")
                    escreva("Total arrecadado: R$ ", totalArrecadado, "\n")
                    escreva("Total pendente: R$ ", totalPendente, "\n")
                    
                    se (qtdPendentes > 0) {
                        escreva("\n--- PENDÊNCIAS ---\n")
                        para (i = 0; i < quantidade; i++) {
                            se (nao pagou[i]) {
                                escreva("• ", nomes[i], " - R$ ", valorIndividual[i], "\n")
                            }
                        }
                    } senao {
                        escreva("\n[SUCESSO] Todos os pagamentos foram realizados!\n")
                    }
                    escreva("==========================================\n")
                    pare

                caso 8:
                    // Mostra informações de contato
                    escreva("\n=========== CONTATO ===========\n")
                    escreva("Sistema de Gerenciamento de Eventos\n")
                    escreva("Email: eventos@sistema.com\n")
                    escreva("Telefone: (XX) XXXX-XXXX\n")
                    escreva("===============================\n\n")
                    pare

                caso 0:
                    // Encerra o programa
                    escreva("\nSaindo do sistema... Até o próximo evento!\n")
                    pare

                caso contrario:
                    // Trata entradas inválidas
                    escreva("\nOpção inválida. Digite um número entre 0 e 8.\n")
            }
        }
    }
}

