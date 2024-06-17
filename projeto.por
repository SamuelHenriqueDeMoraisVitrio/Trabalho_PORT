programa
{
	inclua biblioteca Tipos --> tp
	inclua biblioteca Mouse --> ms
	inclua biblioteca Objetos --> obj
	inclua biblioteca Teclado -->tk
	inclua biblioteca Util --> ut
	inclua biblioteca Texto --> txt
	inclua biblioteca Graficos --> gtk

	inteiro azul_cyan = gtk.criar_cor(70, 182, 254)
	inteiro azul_cyan_escuro = azul_cyan - 100
	inteiro verde_pantano = gtk.criar_cor(22, 175, 58)
	inteiro azul_escuro_fraco = gtk.criar_cor(0, 30, 201)

	logico cadastro = falso
	//inteiro numPontos = 0

	funcao vazio chamadas_quadradas(){

		gtk.definir_cor(azul_cyan)
		
		// Linha 1
		gtk.desenhar_retangulo(10, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(65, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(120, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(175, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(230, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(285, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(340, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(395, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(450, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(505, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(560, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(615, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(670, 90, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(725, 90, 50, 50, verdadeiro, verdadeiro)
		
		// Linha 2
		gtk.desenhar_retangulo(10, 145, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(65, 145, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(120, 145, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(175, 145, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(230, 145, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(285, 145, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(340, 145, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(395, 145, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(450, 145, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(505, 145, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(560, 145, 105, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(670, 145, 105, 50, verdadeiro, verdadeiro)
	}

	funcao iniciarGTK(inteiro x, inteiro y){
		gtk.iniciar_modo_grafico(verdadeiro)
		gtk.definir_dimensoes_janela(x, y)
		gtk.definir_titulo_janela("Trein de piloto")
		gtk.ocultar_borda_janela()
	}
/*
	funcao desenharTexto(inteiro a, inteiro b, cadeia c){
		gtk.desenhar_texto(a, b, c)
	}

	funcao introducao(){
		gtk.definir_cor(gtk.COR_BRANCO)
		gtk.limpar()
		gtk.definir_cor(gtk.COR_PRETO)
		gtk.desenhar_texto(30, 10, "Escreva seu nome:")
	}
*/
	funcao perguntaNum(cadeia texto){

		para(inteiro i = 0; i < 30; i++){
			gtk.definir_cor(gtk.COR_BRANCO)
			gtk.limpar()
			gtk.definir_cor(gtk.COR_PRETO)
			gtk.desenhar_texto(15, 10, "Escreva o numero de pontos desejado:")
			gtk.desenhar_texto(16, 37, texto)
			gtk.desenhar_linha(18, 52, 982, 52)

			gtk.definir_cor(azul_cyan)
			gtk.desenhar_retangulo(740, 110, 100, 50, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(850, 110, 120, 50, verdadeiro, verdadeiro)

			gtk.definir_cor(gtk.COR_PRETO)
			gtk.desenhar_texto(770, 133, "Voltar")
			gtk.desenhar_texto(866, 133, "Confirmar")

			gtk.definir_cor(gtk.COR_VERMELHO)
			gtk.definir_tamanho_texto(12.8)
			gtk.desenhar_texto(743, 112, "[ESC]")
			gtk.desenhar_texto(852, 112, "[ENTER]")

			gtk.definir_tamanho_texto(18.0)

			gtk.renderizar()
		}
	}

	funcao inteiro loop_perguntaNum(inteiro &tll){

		gtk.definir_dimensoes_janela(1000, 180)
		
		inteiro result = 0
		cadeia numero = ""
		enquanto(verdadeiro){
			perguntaNum(numero)

			tll = tk.ler_tecla()
			caracter num = tk.caracter_tecla(tll)
			inteiro numCaracters = txt.numero_caracteres(numero)

			//48 - 57, 0 - 9
			se(tll == 8 e numCaracters > 0){
				numero = txt.extrair_subtexto(numero, 0, numCaracters - 1)
			}senao se(numCaracters == 0){
				se(tll > 48 e tll < 58){
				numero += num
				}	
			}senao se(tll > 47 e tll < 58){
				numero += num
			}
			se(numCaracters > 0 e tll == 10){	
				result = tp.cadeia_para_inteiro(numero, 10)
				se(loop_horaDecolagem(tll)){
					pare
				}
			}
			se(tll == 27){
				result = 0
				pare
			}
		}
		
		retorne result
	}

/*
	funcao pergunta1(){

		cadeia texto1 = ""
		
		enquanto(verdadeiro){
			inteiro tecla = tk.ler_tecla()
			caracter tecla2 = tk.caracter_tecla(tecla)
			inteiro numCaracters = 0
			numCaracters = txt.numero_caracteres(texto1)

			escreva("a tecla é: ", tecla2, " ", tecla, "\n")
			
			se(tecla == 10){
				gtk.encerrar_modo_grafico()
				pare
			}
			se(tecla == 8 e numCaracters > 0){
				texto1 = txt.extrair_subtexto(texto1, 0, numCaracters - 1)
			}senao se(tecla == 16 ou tecla == 17 ou (tecla > 36 e tecla < 41)){	
			}senao{
				texto1 += tecla2
			}

			introducao()
			//gtk.definir_cor(gtk.COR_BRANCO)
			//gtk.limpar()
			//gtk.definir_cor(gtk.COR_PRETO)
			gtk.desenhar_texto(30, 40, txt.caixa_baixa(texto1))
			gtk.renderizar()
		}
	}
*/

	funcao menu(){

		gtk.definir_dimensoes_janela(800, 400)

		para(inteiro i = 0; i < 100; i++){
			
			gtk.definir_cor(gtk.COR_BRANCO)
			gtk.limpar()
			
			gtk.definir_cor(azul_cyan)
			gtk.desenhar_retangulo(290, 10, 230, 70, verdadeiro, verdadeiro)
			
			gtk.definir_cor(azul_escuro_fraco)
			gtk.definir_tamanho_texto(65.0)
			gtk.definir_estilo_texto(falso, verdadeiro, falso)
			gtk.desenhar_texto(300, 20, "MENU")

			gtk.definir_cor(gtk.COR_PRETO)
			gtk.definir_tamanho_texto(16.0)
			gtk.definir_estilo_texto(falso, verdadeiro, falso)
			gtk.desenhar_texto(18, 135, "Para continuar escolha umas das opções apertando a tecla destacada de vermelho.")

			gtk.definir_cor(azul_cyan)
			gtk.desenhar_retangulo(50, 300, 200, 70, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(300, 300, 200, 70, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(550, 300, 200, 70, verdadeiro, verdadeiro)
			
			gtk.definir_cor(gtk.COR_VERMELHO)
			gtk.definir_tamanho_texto(12.8)
			gtk.desenhar_texto(555, 305, "[ENTER]")
			gtk.desenhar_texto(305, 305, "B")
			gtk.desenhar_texto(55, 305, "A")

			gtk.definir_cor(gtk.COR_PRETO)
			gtk.definir_tamanho_texto(23.0)
			gtk.desenhar_texto(614, 327, "SAIR")
			gtk.definir_tamanho_texto(13.0)
			gtk.desenhar_texto(305, 327, "Cadastro de informações")
			gtk.desenhar_texto(83, 327, "Imprimir Tablela")

			gtk.renderizar()
		}
	}

	funcao logico loop_menu(logico loop, inteiro &tecla){

		enquanto(loop){
			menu()
				
			tecla = tk.ler_tecla()
	
			escolha(tecla){
				caso 10:
					cadastro = verdadeiro
					retorne falso
	
				caso 65:
					loop = falso
					pare
	
				caso 66:
					loop = falso
					pare
			}
		}

		retorne verdadeiro
		
	}

	funcao vazio initClient(){

		para(inteiro i = 0; i < 20; i++){

			
			gtk.definir_cor(gtk.COR_BRANCO)
			gtk.limpar()
			
			gtk.definir_cor(verde_pantano)
			gtk.desenhar_retangulo(15, 15, 530, 30, verdadeiro, verdadeiro)
			
			gtk.definir_cor(azul_escuro_fraco)
			gtk.definir_tamanho_texto(22.0)
			gtk.definir_estilo_texto(falso, verdadeiro, falso)
			gtk.desenhar_texto(30, 20, "Quantidade de pontos de referencia?")

			gtk.definir_cor(gtk.COR_PRETO)
			gtk.definir_tamanho_texto(16.0)
			gtk.definir_estilo_texto(falso, verdadeiro, falso)
			gtk.desenhar_texto(18, 50, "Para continuar escolha umas das opções apertando a tecla destacada de vermelho.")

			chamadas_quadradas()

			gtk.definir_cor(gtk.COR_VERMELHO)
			gtk.definir_tamanho_texto(12.8)
			gtk.desenhar_texto(15, 93, "a")
			gtk.desenhar_texto(70, 93, "b")
			gtk.desenhar_texto(125, 93, "c")
			gtk.desenhar_texto(180, 93, "d")
			gtk.desenhar_texto(235, 93, "e")
			gtk.desenhar_texto(290, 93, "f")
			gtk.desenhar_texto(345, 93, "g")
			gtk.desenhar_texto(400, 93, "h")
			gtk.desenhar_texto(455, 93, "i")
			gtk.desenhar_texto(510, 93, "j")
			gtk.desenhar_texto(565, 93, "k")
			gtk.desenhar_texto(620, 93, "l")
			gtk.desenhar_texto(675, 93, "m")
			gtk.desenhar_texto(730, 93, "n")
			gtk.desenhar_texto(15, 148, "o")
			gtk.desenhar_texto(70, 148, "p")
			gtk.desenhar_texto(125, 148, "q")
			gtk.desenhar_texto(180, 148, "r")
			gtk.desenhar_texto(235, 148, "s")
			gtk.desenhar_texto(290, 148, "t")
			gtk.desenhar_texto(345, 148, "u")
			gtk.desenhar_texto(400, 148, "v")
			gtk.desenhar_texto(455, 148, "w")
			gtk.desenhar_texto(510, 148, "x")
			gtk.desenhar_texto(565, 148, "[esc]")
			gtk.desenhar_texto(675, 148, "[space]")


			
			gtk.definir_cor(gtk.COR_PRETO)
			gtk.definir_tamanho_texto(23.0)
			gtk.desenhar_texto(30, 108, "1")
			gtk.desenhar_texto(85, 108, "2")
			gtk.desenhar_texto(140, 108, "3")
			gtk.desenhar_texto(195, 108, "4")
			gtk.desenhar_texto(250, 108, "5")
			gtk.desenhar_texto(305, 108, "6")
			gtk.desenhar_texto(360, 108, "7")
			gtk.desenhar_texto(415, 108, "8")
			gtk.desenhar_texto(470, 108, "9")
			gtk.desenhar_texto(518, 108, "10")
			gtk.desenhar_texto(573, 108, "11")
			gtk.desenhar_texto(628, 108, "12")
			gtk.desenhar_texto(683, 108, "13")
			gtk.desenhar_texto(738, 108, "14")
			gtk.desenhar_texto(23, 163, "15")
			gtk.desenhar_texto(78, 163, "16")
			gtk.desenhar_texto(133, 163, "17")
			gtk.desenhar_texto(188, 163, "18")
			gtk.desenhar_texto(243, 163, "19")
			gtk.desenhar_texto(298, 163, "20")
			gtk.desenhar_texto(353, 163, "21")
			gtk.desenhar_texto(408, 163, "22")
			gtk.desenhar_texto(463, 163, "23")
			gtk.desenhar_texto(518, 163, "24")
			
			gtk.definir_tamanho_texto(18.0)
			gtk.desenhar_texto(594, 168, "Voltar")
			gtk.desenhar_texto(684, 168, "escreva")
			
			gtk.renderizar()

			//space == 32
			
		}

			
	}

	funcao inteiro loop_initClient(logico &lpp, inteiro &tll){

		gtk.definir_dimensoes_janela(800, 200)

		cadastro = falso
		inteiro num = 0

		enquanto(lpp){
			initClient()

			tll = tk.ler_tecla()

			se(tll >= 65 e tll <= 88){
				num = tll - 64
				se(loop_horaDecolagem(tll)){
					retorne num
				}
				gtk.definir_dimensoes_janela(800, 200)
			}senao se(tll == 32){
				num = loop_perguntaNum(tll)
				se(num != 0){
					retorne num
				}
				gtk.definir_dimensoes_janela(800, 200)
			}senao se(tll == 27){
				cadastro = falso
				retorne num
			}
		}

		cadastro = verdadeiro

		retorne num
		
	}

	funcao horaDecolagem(inteiro pos, cadeia hora, cadeia minuto, cadeia pam){

		para(inteiro i = 0; i < 20; i++){

			
			gtk.definir_cor(gtk.COR_BRANCO)
			gtk.limpar()
			
			gtk.definir_cor(verde_pantano)
			gtk.desenhar_retangulo(15, 15, 380, 30, verdadeiro, verdadeiro)
			
			gtk.definir_cor(azul_escuro_fraco)
			gtk.definir_tamanho_texto(22.0)
			gtk.definir_estilo_texto(falso, verdadeiro, falso)
			gtk.desenhar_texto(30, 20, "Qual horario de decolagem?")

			gtk.definir_cor(gtk.COR_PRETO)
			gtk.definir_tamanho_texto(16.0)
			gtk.definir_estilo_texto(falso, verdadeiro, falso)
			gtk.desenhar_texto(18, 50, "Para continuar, defina o horario de decolagem.")
			gtk.desenhar_texto(18, 68, "Defina apertando a tecla destacada de vermelho.")
			//x --> 22
			gtk.desenhar_texto(43, 94, "HH")
			gtk.desenhar_texto(133, 94, "MM")
			gtk.desenhar_texto(207, 94, "AM/PM")

			gtk.definir_cor(azul_cyan)
			se(pos == 0){
				gtk.definir_cor(azul_cyan_escuro)	
			}
			gtk.desenhar_retangulo(15, 115, 80, 75, verdadeiro, verdadeiro)
			
			gtk.definir_cor(azul_cyan)
			se(pos == 1){
				gtk.definir_cor(azul_cyan_escuro)	
			}
			gtk.desenhar_retangulo(110, 115, 80, 75, verdadeiro, verdadeiro)
			
			gtk.definir_cor(azul_cyan)
			se(pos == 2){
				gtk.definir_cor(azul_cyan_escuro)	
			}
			gtk.desenhar_retangulo(200, 115, 80, 75, verdadeiro, verdadeiro)
			
			gtk.definir_cor(azul_cyan-80)
			gtk.desenhar_retangulo(456, 3, 142, 214, verdadeiro, verdadeiro)
			
			gtk.definir_cor(gtk.COR_VERMELHO)
			gtk.definir_tamanho_texto(12.8)
			gtk.desenhar_texto(468, 10, "[<--] ou [-->]")
			gtk.desenhar_texto(468, 64, "[/\\] ou [\\/]")
			gtk.desenhar_texto(468, 118, "[esc]")
			gtk.desenhar_texto(468, 172, "[enter]")

			gtk.definir_cor(gtk.COR_PRETO)

			gtk.definir_tamanho_texto(18.0)
			gtk.desenhar_texto(490, 30, "alternar")
			gtk.desenhar_linha(456, 54, 600, 54)
			gtk.desenhar_texto(500, 84, "definir")
			gtk.desenhar_linha(456, 108, 600, 108)
			gtk.desenhar_texto(500, 138, "voltar")
			gtk.desenhar_linha(456, 162, 600, 162)
			gtk.desenhar_texto(485, 192, "corfirmar")
			
			gtk.definir_tamanho_texto(50.0)
			gtk.desenhar_texto(20, 135, hora)
			gtk.desenhar_texto(92, 130, ":")
			gtk.desenhar_texto(115, 135, minuto)
			gtk.definir_tamanho_texto(40.0)
			gtk.desenhar_texto(205, 135, pam)

			gtk.renderizar()
		}
	}

	funcao logico loop_horaDecolagem(inteiro &tll){

		gtk.definir_dimensoes_janela(600, 220)

		inteiro posicao = 0
		inteiro hh = 12
		inteiro mm = 0
		cadeia hhc = "12"
		cadeia mmc = "00"
		cadeia pam = "AM"

		enquanto(verdadeiro){
			horaDecolagem(posicao, hhc, mmc, pam)

			tll = tk.ler_tecla()
			escreva("\n\ttll --> ", tll)
			
			se(tll == 37 e posicao > 0){
				posicao--
			}
			se(tll == 39 e posicao < 2){
				posicao++
			}
			se(posicao == 0){
				se(tll == 38 e hh < 12){
					hh++
					hhc = escolhaHora(hh, 'H')
				}
				se(tll == 40 e hh > 1){
					hh--
					hhc = escolhaHora(hh, 'H')
				}
			}
			se(posicao == 1){
				se(tll == 38 e mm < 59){
					mm++
					mmc = escolhaHora(mm, 'M')
				}
				se(tll == 40 e mm > 0){
					mm--
					mmc = escolhaHora(mm, 'M')
				}
			}
			se(posicao == 2){
				se(tll == 38){
					pam = "AM"
				}
				se(tll == 40){
					pam = "PM"
				}
			}
			se(tll == 10){
				retorne verdadeiro
			}
			se(tll == 27){
				retorne falso
			}
		}
		
		retorne falso
	}

	funcao cadeia escolhaHora(inteiro num, caracter tip){

		se(tip == 'H'){
			escolha(num){
				caso 1:
					retorne "01"
				caso 2:
		                retorne "02"
		          caso 3:
		                retorne "03"
		          caso 4:
		                retorne "04"
		          caso 5:
		                retorne "05"
		          caso 6:
		                retorne "06"
		          caso 7:
		                retorne "07"
		          caso 8:
		                retorne "08"
		          caso 9:
		                retorne "09"
		          caso 10:
		                retorne "10"
		          caso 11:
		                retorne "11"
		          caso 12:
		                retorne "12"
			}
		}
		se(tip == 'M'){
			escolha(num){
				caso 0:
					retorne "00"
				caso 1:
					retorne "01"
				caso 2:
					retorne "02"
				caso 3:
		              retorne "03"
		          caso 4:
		              retorne "04"
		          caso 5:
		              retorne "05"
				caso 6:
		               retorne "06"
		          caso 7:
		              retorne "07"
		          caso 8:
		              retorne "08"
		          caso 9:
		              retorne "09"
				caso contrario:
					retorne tp.inteiro_para_cadeia(num, 10)
			}
		}
		retorne ""
	}
	
	funcao inicio(){
		
		iniciarGTK(800, 400)

		inteiro tecla = 0
		inteiro num_pontos = 0
		logico loop_infinito = verdadeiro

		logico fim = verdadeiro
		enquanto(fim){
			
			fim = loop_menu(loop_infinito, tecla)
	
			
			se(tecla == 66){
				num_pontos = loop_initClient(loop_infinito, tecla)
				gtk.definir_dimensoes_janela(800, 400)
			}
		
		}

		gtk.encerrar_modo_grafico()
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10042; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */