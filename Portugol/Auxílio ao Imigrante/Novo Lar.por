programa {
    inclua biblioteca Texto --> tx

    // Variáveis globais organizadas por categoria
    cadeia formacoes[10], empregos[10], vacinas[10], doencas[10], apoiosEscolhidos[10]
    inteiro totalFormacoes = 0, totalEmpregos = 0, totalVacinas = 0, totalDoencas = 0, totalApoios = 0
    inteiro anoAtual = 2025, diaNascimento, mesNascimento, anoNascimento, idade
    
    // Dados pessoais
    cadeia nome_imigrante, nacionalidade, documento_id, letra
    cadeia nivel_escolaridade, local_estudo, instituicao_ensino, ano_formacao
    
    // Contatos e moradia
    cadeia nomeContato, relacaoContato, telefoneContato, emailContato
    cadeia tipoMoradia, enderecoMoradia, cidadeMoradia
    cadeia planoSaude, nomePlanoSaude, alergias, hospitalPreferencial

    cadeia exemploDocumentacao[3] = {"Centro de Apoio ao Imigrante - Rua das Flores, 123", 
                                     "ONG Acolher - Av. Central, 456", 
                                     "Defensoria Pública - Praça da Justiça, 789"}
    cadeia exemploMoradia[3] = {"Casa de Acolhida Esperança - Bairro Centro", 
                               "Albergue Municipal - Zona Norte", 
                               "Residência Solidária - Vila Nova"}
    cadeia exemploIdioma[3] = {"Escola de Idiomas Babel - Curso Português Básico", 
                              "Centro Cultural - Aulas de Português para Estrangeiros", 
                              "Universidade Popular - Programa de Integração Linguística"}
    cadeia exemploEmprego[3] = {"SINE - Serviço de Intermediação de Emprego", 
                               "Agência do Trabalhador - Cadastro Profissional", 
                               "Centro de Qualificação - Cursos Profissionalizantes"}

    funcao logico ehNumero(cadeia texto) {
        para (inteiro i = 0; i < tx.numero_caracteres(texto); i++) {
            cadeia caractere = tx.extrair_subtexto(texto, i, i + 1)
            se (caractere == "0" ou caractere == "1" ou caractere == "2" ou caractere == "3" ou 
                caractere == "4" ou caractere == "5" ou caractere == "6" ou caractere == "7" ou 
                caractere == "8" ou caractere == "9") {
                retorne verdadeiro
            }
        }
        retorne falso
    }

    funcao logico validarTexto(cadeia texto) {
        se (texto == "" ou ehNumero(texto)) {
            retorne falso
        }
        retorne verdadeiro
    }

    funcao exibirErroTexto() {
        escreva("ERRO: Este campo deve conter apenas letras e não pode estar vazio!\n")
        escreva("Pressione ENTER para tentar novamente...")
        leia("")
        limpa()
    }

    funcao exibirTelaApresentacao1() {
        escreva("                                                                                         \n")
        escreva("                                                                         :::             \n")
        escreva("                                                          +%%%=        -%%%%%%           \n")
        escreva("                                                        +%%%%%%%=      -%%%%%%           \n")
        escreva("                                                      +%%%%%*%%%%%+    -%%%%%%           \n")
        escreva("                                                    +%%%%%:...-%%%%%#   #%%%%%           \n")
        escreva("                                                  +%%%%%:...-...-%%%%%# ###%%%           \n")
        escreva("                                                =%%%%%:..:======..:%%%%%%####%           \n")
        escreva("                                              =%%%%%-..:==========...#%%%%%-%%           \n")
        escreva("                                            =%%%%%-..:==============...#%%%%%=           \n")
        escreva("                                          =%%%%%-..:==================:..+%%%%%=         \n")
        escreva("                                        =%%%%%=..:======================:..=%%%%%+       \n")
        escreva("                                      =%%%%%=..:==========================:..-%%%%%#:    \n")
        escreva("                                   .=%%%%%=..:==============================-..-%%%%%#:  \n")
        escreva("                                   +%%%%=..:===############===-::::::::::::===-..:*%%%%  \n")
        escreva("                                   .-#:....===+%*---*#---+%+==..#########=.-===:....::...\n")
        escreva("                                           ===+%+:::**:::+%+==..%%%%%%%%%+.-===:         \n")
        escreva("                                           ===+%%###%%###%%+==..%%%%%%%%%+.-===:         \n")
        escreva("                                           ===+%+:::**:::+%+==..%%%%%%%%%+.-===:         \n")
        escreva("                                           ===+%+:::**:::+%+==..%.-%%%%%%+.-===:         \n")
        escreva("                                           ===+%%%%%%%%%%%%+==..%++%%%%%%+.-===:         \n")
        escreva("                                           ===================..%%%%%%%%%+.-===:         \n")
        escreva("                                           ===================..%%%%%%%%%+.-===:         \n")
        escreva("                                           ===================..%%%%%%%%%+.-===:         \n")
        escreva("                                           -==================..%%%%%%%%%+.:===:         \n")
        escreva("                                                                                                                                 \n")
        escreva("      100        0      000011000     01         00    111101010            01             1001       011011110000               \n")
        escreva("      11010      1    01         10   110       11    00        10          00             00 01      11         00              \n")
        escreva("      00  00     1   11           10   11      00    01          00         10            11  11      10        001              \n")
        escreva("      01   00    1   10           11    11     10   11           00         01           11    00     01100101001                \n")
        escreva("      01    101  1   01           01     00   01     11          00         01          0000010111    00     100                 \n")
        escreva("      11      1010    01         10      00  11      10          01         11          00       11   00       11                \n")
        escreva("      00       101     100      11        0111        011      101          00         00        011  11        001              \n")
        escreva("      10        10        01111            010           110101             000000011 11          11  10         010             \n")
        escreva("\n \n ======================Aperte ENTER para começar seu cadastro... ======================")
        leia("")  
        limpa()
    }

    funcao exibirTelaApresentacao2() {
        escreva ("                                                                                                                \n")
        escreva ("                                                                                                                \n")
        escreva ("    ##             ###                                                  # ###                                   \n")
        escreva ("    ##       #    ###      ##         #     ##   ##      ##       ##      ##       ##      ###                  \n")
        escreva ("    ##   ### ###  ###   ###  ###  ##### ###  ###  ##      ###  ###  #  ###  ##   ##  ##  ##                     \n")
        escreva ("    ##   ##   ##   ##  ###    ##  ##    ##   ##   ##   ######  ##     ###   ### ########  ####                \n")
        escreva ("    ##   ##   ##   ##   ##   ###  ##    ##   ##   ##  ##  ###  ###     ##   ##  ###          ##       \n")
        escreva ("    ##   ##   ##   ##     ####    ##    ##   ##   ##   ### ##    ####    ###      ####   ####                                                                                                            \n")
        escreva ("                                                                                                         .%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.\n")
        escreva ("                                                                                                         :@-::::::::::::::::::::::::::::::::::::::--@=\n")
        escreva ("                                                                                                         :@-::::::::::::::::::::::::::::::::::::::--@=\n")
        escreva ("  #######                   ##                                                                           :@-:::@@@@@@@@@@@@@@@@+:::**************=--@=\n")
        escreva ("  ##   ###    ##       ##          ##      ##     ####                                                   :@-:::@%+++++++++++++@%::::::::::::::::::--@=\n")
        escreva ("  ######    #   ##  ###     ##  ###  #   #   ##  ###                                                     :@-:::@%+++#@#+%@++++@%::::::::::::::::::--@=\n")
        escreva ("  ##   ###  ######   ####   ##  ##       ######   ####                                                   :@-:::@%+++@+:::@%+++@%::::::::::::::::::--@=\n")
        escreva ("  ##   ### ##   ##      ##  ##  ###     ##   ##      ##                                                  :@-:::@%++++@@@@@++++@%:::--------------:--@=\n")
        escreva ("  ######    ### ##  #####   ##    ####   ### ##   ####                                                   :@-:::@%++@*----=@@++@%::::::::::::::::::--@=\n")
        escreva ("                                                                                                         :@-:::@%+@@------=@++@%::::::::::::::::::--@=\n")
        escreva ("                                                                                                         :@-:::@@@@@@@@@@@@@@@@+:::**************+--@=\n")
        escreva ("                                                                                                         :@-::::::::::::::::::::::::::::::::::::::--@=\n")
        escreva ("                                                                                                         :@-::::::::::::::::::::::::::::::::::::::--@=\n")
        escreva ("                                                                                                         .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.\n")
        leia("")
        limpa()
    }

    funcao exibirExemplosServico(cadeia tipoServico, cadeia exemplos[]) {
        escreva("\n--- EXEMPLOS DE ", tx.caixa_alta(tipoServico), " DISPONÍVEIS ---\n")
        para (inteiro i = 0; i < 3; i++) {
            escreva("• ", exemplos[i], "\n")
        }
        escreva("\n")
    }

    funcao cadastroImigrante() {
        faca {
            escreva("Nome completo: ")
            leia(nome_imigrante)
            limpa()
            se (nao validarTexto(nome_imigrante)) {
                exibirErroTexto()
            }
        } enquanto (nao validarTexto(nome_imigrante))

        escreva("Certo ", nome_imigrante, ", vamos dar continuidade.\n")

        faca {
            escreva("Informe sua NACIONALIDADE: ")
            leia(nacionalidade)
            limpa()
            se (nao validarTexto(nacionalidade)) {
                exibirErroTexto()
            }
        } enquanto (nao validarTexto(nacionalidade))
    }

    funcao preencherDataNascimento() {
        faca {
            escreva("=== PREENCHIMENTO DA DATA DE NASCIMENTO ===\n")
            escreva("AVISO: Digite apenas números!\n\n")

            faca {
                escreva("Dia de nascimento (1-31): ")
                leia(diaNascimento)
                se (diaNascimento < 1 ou diaNascimento > 31) {
                    escreva("Dia inválido! Deve ser entre 1 e 31.\n")
                }
            } enquanto (diaNascimento < 1 ou diaNascimento > 31)

            faca {
                escreva("Mês de nascimento (1-12): ")
                leia(mesNascimento)
                se (mesNascimento < 1 ou mesNascimento > 12) {
                    escreva("Mês inválido! Deve estar entre 1 e 12.\n")
                }
            } enquanto (mesNascimento < 1 ou mesNascimento > 12)

            faca {
                escreva("Ano de nascimento (1900-", anoAtual, "): ")
                leia(anoNascimento)
                se (anoNascimento < 1900 ou anoNascimento > anoAtual) {
                    escreva("Ano inválido! Deve estar entre 1900 e ", anoAtual, ".\n")
                }
            } enquanto (anoNascimento < 1900 ou anoNascimento > anoAtual)

            // Calcular idade
            idade = anoAtual - anoNascimento

            escreva("\nSua data de nascimento: ", diaNascimento, "/", mesNascimento, "/", anoNascimento)
            escreva(" (", idade, " anos)\n")
            escreva("Está correta? (S)SIM | (N)NÃO: ")
            leia(letra)
            letra = tx.caixa_alta(letra)
            limpa()
        } enquanto (letra != "S")
    }

    funcao preencherDocumento() {
        faca {
            escreva("Informe seu documento de identificação: ")
            leia(documento_id)
            escreva("Documento informado: ", documento_id, "\n")
            escreva("Está correto? (S)SIM | (N)NÃO: ")
            leia(letra)
            letra = tx.caixa_alta(letra)
            limpa()
        } enquanto (letra != "S")
    }

    funcao preencherEscolaridade() {
        escreva("=== INFORMAÇÕES DE ESCOLARIDADE ===\n")
        
        faca {
            escreva("Qual seu nível de escolaridade?\n")
            escreva("(Ex: Ensino Fundamental, Médio, Superior, etc.): ")
            leia(nivel_escolaridade)
            limpa()
            
            escreva("Em qual país você estudou? ")
            leia(local_estudo)
            limpa()
            
            escreva("Nome da instituição de ensino: ")
            leia(instituicao_ensino)
            limpa()
            
            escreva("Ano de formação (ou digite 'NÃO' se não se formou): ")
            leia(ano_formacao)
            limpa()
            
            escreva("=== CONFIRMAÇÃO DOS DADOS ===\n")
            escreva("Nível de escolaridade: ", nivel_escolaridade, "\n")
            escreva("País onde estudou: ", local_estudo, "\n")
            escreva("Instituição: ", instituicao_ensino, "\n")
            escreva("Ano de formação: ", ano_formacao, "\n")
            escreva("\nAs informações estão corretas? (S)SIM | (N)NÃO: ")
            leia(letra)
            letra = tx.caixa_alta(letra)
            limpa()
        } enquanto (letra != "S")
    }

    funcao preencherFormacoes() {
        escreva("=== CADASTRO DE FORMAÇÕES PROFISSIONAIS ===\n")
        escreva("Quantas formações deseja cadastrar? (0 para nenhuma): ")
        leia(totalFormacoes)
        
        se (totalFormacoes > 0 e totalFormacoes <= 10) {
            para (inteiro i = 0; i < totalFormacoes; i++) {
                escreva("Formação ", i + 1, ": ")
                leia(formacoes[i])
            }
            
            escreva("\n=== FORMAÇÕES CADASTRADAS ===\n")
            para (inteiro i = 0; i < totalFormacoes; i++) {
                escreva(i + 1, " - ", formacoes[i], "\n")
            }
        } senao se (totalFormacoes > 10) {
            escreva("Máximo de 10 formações permitidas. Continuando...\n")
            totalFormacoes = 0
        } senao {
            escreva("Nenhuma formação cadastrada.\n")
        }
        
        escreva("Pressione ENTER para continuar...")
        leia("")
        limpa()
    }

    funcao preencherEmpregos() {
        se (idade >= 18) {
            escreva("=== EXPERIÊNCIA PROFISSIONAL ===\n")
            escreva("Você já trabalhou antes? (S)SIM | (N)NÃO: ")
            leia(letra)
            letra = tx.caixa_alta(letra)
            
            se (letra == "S") {
                limpa()
                escreva("Quantos empregos anteriores deseja cadastrar? (máx. 10): ")
                leia(totalEmpregos)
                
                se (totalEmpregos > 0 e totalEmpregos <= 10) {
                    para (inteiro i = 0; i < totalEmpregos; i++) {
                        escreva("Emprego ", i + 1, ": ")
                        leia(empregos[i])
                    }
                    
                    escreva("\n=== EMPREGOS CADASTRADOS ===\n")
                    para (inteiro i = 0; i < totalEmpregos; i++) {
                        escreva(i + 1, " - ", empregos[i], "\n")
                    }
                } senao se (totalEmpregos > 10) {
                    escreva("Máximo de 10 empregos permitidos.\n")
                    totalEmpregos = 0
                }
            }
        } senao {
            escreva("=== MENOR DE IDADE ===\n")
            escreva("Cadastro de empregos não aplicável para menores de 18 anos.\n")
        }
        
        escreva("Pressione ENTER para continuar...")
        leia("")
        limpa()
    }

    funcao servicoApoio() {
        cadeia opcao
        escreva("=== SERVIÇOS DE APOIO ===\n")
        escreva("Selecione os serviços que precisa (pode escolher vários):\n")

        faca {
            escreva("\n--- OPÇÕES DISPONÍVEIS ---\n")
            escreva("[1] Apoio com documentação\n")
            escreva("[2] Apoio com moradia\n")
            escreva("[3] Cursos de idioma\n")
            escreva("[4] Apoio para emprego\n")
            escreva("[5] Nenhum apoio necessário\n")
            escreva("[6] Ver exemplos de serviços\n")
            escreva("[0] Finalizar seleção\n")
            
            se (totalApoios > 0) {
                escreva("\n--- SERVIÇOS JÁ SELECIONADOS ---\n")
                para (inteiro i = 0; i < totalApoios; i++) {
                    escreva("✓ ", apoiosEscolhidos[i], "\n")
                }
            }
            
            escreva("\nEscolha uma opção: ")
            leia(opcao)
            limpa()

            escolha (opcao) {
                caso "1":
                    se (totalApoios < 10) {
                        apoiosEscolhidos[totalApoios] = "Apoio com documentação"
                        totalApoios++
                        escreva("✓ Adicionado: Apoio com documentação\n")
                        escreva("Pressione ENTER para continuar...")
                        leia("")
                    }
                    pare
                caso "2":
                    se (totalApoios < 10) {
                        apoiosEscolhidos[totalApoios] = "Apoio com moradia"
                        totalApoios++
                        escreva("✓ Adicionado: Apoio com moradia\n")
                        escreva("Pressione ENTER para continuar...")
                        leia("")
                    }
                    pare
                caso "3":
                    se (totalApoios < 10) {
                        apoiosEscolhidos[totalApoios] = "Cursos de idioma"
                        totalApoios++
                        escreva("✓ Adicionado: Cursos de idioma\n")
                        escreva("Pressione ENTER para continuar...")
                        leia("")
                    }
                    pare
                caso "4":
                    se (totalApoios < 10) {
                        apoiosEscolhidos[totalApoios] = "Apoio para emprego"
                        totalApoios++
                        escreva("✓ Adicionado: Apoio para emprego\n")
                        escreva("Pressione ENTER para continuar...")
                        leia("")
                    }
                    pare
                caso "5":
                    totalApoios = 0
                    apoiosEscolhidos[totalApoios] = "Nenhum apoio necessário"
                    totalApoios++
                    escreva("✓ Selecionado: Nenhum apoio necessário\n")
                    opcao = "0" // Finaliza automaticamente
                    pare

                caso "6":
                    cadeia tipoExemplo
                    escreva("Qual tipo de serviço deseja ver exemplos?\n")
                    escreva("[1] Documentação [2] Moradia [3] Idioma [4] Emprego: ")
                    leia(tipoExemplo)
                    limpa()
                    
                    escolha (tipoExemplo) {
                        caso "1":
                            exibirExemplosServico("documentação", exemploDocumentacao)
                            pare
                        caso "2":
                            exibirExemplosServico("moradia", exemploMoradia)
                            pare
                        caso "3":
                            exibirExemplosServico("idioma", exemploIdioma)
                            pare
                        caso "4":
                            exibirExemplosServico("emprego", exemploEmprego)
                            pare
                        caso contrario:
                            escreva("Opção inválida!\n")
                    }
                    escreva("Pressione ENTER para voltar ao menu...")
                    leia("")
                    limpa()
                    pare
                caso "0":
                    escreva("Finalizando seleção...\n")
                    pare
                caso contrario:
                    escreva("❌ Opção inválida! Tente novamente.\n")
            }
        } enquanto (opcao != "0")

        escreva("Pressione ENTER para continuar...")
        leia("")
        limpa()
    }

    funcao preencherVacinas() {
        escreva("=== CADASTRO DE VACINAS ===\n")
        escreva("Quantas vacinas deseja cadastrar? (0-10): ")
        leia(totalVacinas)
        
        se (totalVacinas > 0 e totalVacinas <= 10) {
            para (inteiro i = 0; i < totalVacinas; i++) {
                escreva("Vacina ", i + 1, ": ")
                leia(vacinas[i])
            }
        } senao se (totalVacinas > 10) {
            escreva("Máximo de 10 vacinas permitidas.\n")
            totalVacinas = 0
        }
        limpa()
    }

    funcao preencherDoencas() {
        escreva("=== HISTÓRICO MÉDICO ===\n")
        escreva("Quantas condições médicas deseja cadastrar? (0-10): ")
        leia(totalDoencas)
        
        se (totalDoencas > 0 e totalDoencas <= 10) {
            para (inteiro i = 0; i < totalDoencas; i++) {
                escreva("Condição médica ", i + 1, ": ")
                leia(doencas[i])
            }
        } senao se (totalDoencas > 10) {
            escreva("Máximo de 10 condições permitidas.\n")
            totalDoencas = 0
        }
        limpa()
    }

    funcao preencherContatoEmergencia() {
        escreva("=== CONTATO DE EMERGÊNCIA ===\n")
        escreva("Nome do contato: ")
        leia(nomeContato)
        escreva("Relação com você: ")
        leia(relacaoContato)
        escreva("Telefone: ")
        leia(telefoneContato)
        escreva("E-mail: ")
        leia(emailContato)
        limpa()
    }

    funcao preencherMoradia() {
        escreva("=== INFORMAÇÕES DE MORADIA ===\n")
        escreva("Tipo de moradia desejada: ")
        leia(tipoMoradia)
        escreva("Endereço preferencial: ")
        leia(enderecoMoradia)
        escreva("Cidade preferencial: ")
        leia(cidadeMoradia)
        limpa()
    }

    funcao preencherSaude() {
        escreva("=== INFORMAÇÕES DE SAÚDE ===\n")
        escreva("Possui plano de saúde? (S)SIM | (N)NÃO: ")
        leia(planoSaude)
        planoSaude = tx.caixa_alta(planoSaude)
        
        se (planoSaude == "S") {
            escreva("Qual o nome do seu plano de saúde? ")
            leia(nomePlanoSaude)
        } senao {
            nomePlanoSaude = "Não possui"
        }
        
        escreva("Possui alergias? (S)SIM | (N)NÃO: ")
        leia(alergias)
        alergias = tx.caixa_alta(alergias)
        
        escreva("Hospital preferencial: ")
        leia(hospitalPreferencial)
        limpa()
    }

    funcao imprimirLinha(cadeia texto) {
        inteiro tamanhoTotal = 41
        inteiro tamanhoTexto = tx.numero_caracteres(texto)
        inteiro espacos = tamanhoTotal - tamanhoTexto - 2
        
        escreva("| " + texto)
        para (inteiro i = 0; i < espacos; i++) {
            escreva(" ")
        }
        escreva("|\n")
    }

    funcao imprimirSecao(cadeia titulo) {
        escreva("==========================================\n")
        escreva("|" + titulo)
        inteiro espacos = 40 - tx.numero_caracteres(titulo)
        para (inteiro i = 0; i < espacos; i++) {
            escreva(" ")
        }
        escreva("|\n")
        escreva("==========================================\n")
    }

    funcao gerarFicha() {
        limpa()
        escreva("==========================================\n")
        escreva("|        FICHA DE CADASTRO FINAL         |\n")
        escreva("==========================================\n")
        
        imprimirSecao("DADOS PESSOAIS")
        imprimirLinha("Nome: " + nome_imigrante)
        imprimirLinha("Nacionalidade: " + nacionalidade)
        imprimirLinha("Data Nasc: " + diaNascimento + "/" + mesNascimento + "/" + anoNascimento)
        imprimirLinha("Idade: " + idade + " anos")
        imprimirLinha("Documento: " + documento_id)
        
        imprimirSecao("ESCOLARIDADE")
        imprimirLinha("Nível: " + nivel_escolaridade)
        imprimirLinha("Local: " + local_estudo)
        imprimirLinha("Instituição: " + instituicao_ensino)
        imprimirLinha("Formação: " + ano_formacao)
        
        imprimirSecao("FORMAÇÕES PROFISSIONAIS")
        se (totalFormacoes > 0) {
            para (inteiro i = 0; i < totalFormacoes; i++) {
                imprimirLinha("• " + formacoes[i])
            }
        } senao {
            imprimirLinha("Nenhuma formação cadastrada")
        }
        
        imprimirSecao("EXPERIÊNCIA PROFISSIONAL")
        se (totalEmpregos > 0) {
            para (inteiro i = 0; i < totalEmpregos; i++) {
                imprimirLinha("• " + empregos[i])
            }
        } senao {
            imprimirLinha("Nenhum emprego cadastrado")
        }
        
        imprimirSecao("SERVIÇOS DE APOIO")
        se (totalApoios > 0) {
            para (inteiro i = 0; i < totalApoios; i++) {
                imprimirLinha("• " + apoiosEscolhidos[i])
            }
        } senao {
            imprimirLinha("Nenhum apoio selecionado")
        }
        
        imprimirSecao("INFORMAÇÕES DE SAÚDE")
        imprimirLinha("Plano de saúde: " + nomePlanoSaude)
        imprimirLinha("Alergias: " + alergias)
        imprimirLinha("Hospital pref.: " + hospitalPreferencial)
        
        imprimirSecao("CONTATO DE EMERGÊNCIA")
        imprimirLinha("Nome: " + nomeContato)
        imprimirLinha("Relação: " + relacaoContato)
        imprimirLinha("Telefone: " + telefoneContato)
        imprimirLinha("E-mail: " + emailContato)
        
        escreva("==========================================\n")
        escreva("|           CADASTRO FINALIZADO!        |\n")
        escreva("==========================================\n")
    }

    funcao inicio() {
        exibirTelaApresentacao1()
        exibirTelaApresentacao2()
        
        // Coleta de dados pessoais
        cadastroImigrante()
        preencherDataNascimento()
        preencherDocumento()
        
        // Informações educacionais e profissionais
        preencherEscolaridade()
        preencherFormacoes()
        preencherEmpregos()
        
        // Serviços e informações complementares
        servicoApoio()
        preencherVacinas()
        preencherDoencas()
        preencherContatoEmergencia()
        preencherMoradia()
        preencherSaude()
        
        // Geração da ficha final
        gerarFicha()
        
        escreva("\nObrigado por utilizar nosso sistema!\n")
        escreva("Pressione ENTER para finalizar...")
        leia("")
    }
}
