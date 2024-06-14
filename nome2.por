programa
{
	inclua biblioteca Objetos --> obj
	inclua biblioteca Teclado -->tk
	inclua biblioteca Util --> ut
	inclua biblioteca Texto --> txt
	inclua biblioteca Graficos --> gtk

	logico cadastro = falso

	funcao vazio chamadas_quadradas(){
		
		// Linha 1
		gtk.desenhar_retangulo(10, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(65, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(120, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(175, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(230, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(285, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(340, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(395, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(450, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(505, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(560, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(615, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(670, 100, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(725, 100, 50, 50, verdadeiro, verdadeiro)
		
		// Linha 2
		gtk.desenhar_retangulo(10, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(65, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(120, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(175, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(230, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(285, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(340, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(395, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(450, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(505, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(560, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(615, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(670, 155, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(725, 155, 50, 50, verdadeiro, verdadeiro)
		
		// Linha 3
		gtk.desenhar_retangulo(10, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(65, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(120, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(175, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(230, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(285, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(340, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(395, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(450, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(505, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(560, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(615, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(670, 210, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(725, 210, 50, 50, verdadeiro, verdadeiro)
		
		// Linha 4
		gtk.desenhar_retangulo(10, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(65, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(120, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(175, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(230, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(285, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(340, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(395, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(450, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(505, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(560, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(615, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(670, 265, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(725, 265, 50, 50, verdadeiro, verdadeiro)
		
		// Linha 5
		gtk.desenhar_retangulo(10, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(65, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(120, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(175, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(230, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(285, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(340, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(395, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(450, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(505, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(560, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(615, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(670, 320, 50, 50, verdadeiro, verdadeiro)
		gtk.desenhar_retangulo(725, 320, 50, 50, verdadeiro, verdadeiro)
	}

	funcao iniciarGTK(inteiro x, inteiro y){
		gtk.iniciar_modo_grafico(verdadeiro)
		gtk.definir_dimensoes_janela(x, y)
		gtk.definir_titulo_janela("Trein de piloto")
		//gtk.ocultar_borda_janela()
	}
	
	funcao desenharTexto(inteiro a, inteiro b, cadeia c){
		gtk.desenhar_texto(a, b, c)
	}

	funcao introducao(){
		gtk.definir_cor(gtk.COR_BRANCO)
		gtk.limpar()
		gtk.definir_cor(gtk.COR_PRETO)
		gtk.desenhar_texto(30, 10, "Escreva seu nome:")
	}

	funcao pergunta(){

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

	funcao menu(){

		para(inteiro i = 0; i < 45; i++){
			
			gtk.definir_cor(gtk.COR_BRANCO)
			gtk.limpar()
			
			gtk.definir_cor(gtk.COR_VERDE)
			gtk.desenhar_retangulo(290, 10, 230, 70, verdadeiro, verdadeiro)
			
			gtk.definir_cor(gtk.COR_AZUL)
			gtk.definir_tamanho_texto(65.0)
			gtk.definir_estilo_texto(falso, verdadeiro, falso)
			gtk.desenhar_texto(300, 20, "MENU")

			gtk.definir_cor(gtk.COR_PRETO)
			gtk.definir_tamanho_texto(16.0)
			gtk.definir_estilo_texto(falso, verdadeiro, falso)
			gtk.desenhar_texto(18, 135, "Para continuar escolha umas das opções apertando a tecla destacada de vermelho.")

			gtk.definir_cor(gtk.criar_cor(70, 182, 254))
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
					loop = falso
					pare
	
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



		para(inteiro i = 0; i < 45; i++){
			
			gtk.definir_cor(gtk.COR_BRANCO)
			gtk.limpar()
			
			gtk.definir_cor(gtk.criar_cor(22, 175, 58))
			gtk.desenhar_retangulo(15, 35, 530, 30, verdadeiro, verdadeiro)
			
			gtk.definir_cor(gtk.criar_cor(0, 30, 201))
			gtk.definir_tamanho_texto(22.0)
			gtk.definir_estilo_texto(falso, verdadeiro, falso)
			gtk.desenhar_texto(30, 40, "Quantidade de pontos de referencia?")

			gtk.definir_cor(gtk.COR_PRETO)
			gtk.definir_tamanho_texto(16.0)
			gtk.definir_estilo_texto(falso, verdadeiro, falso)
			gtk.desenhar_texto(18, 70, "Para continuar escolha umas das opções apertando a tecla destacada de vermelho.")

			gtk.definir_cor(gtk.criar_cor(70, 182, 254))
			
/*
			gtk.desenhar_retangulo(50, 86, 50, 50, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(300, 86, 200, 70, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(550, 86, 200, 70, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(50, 164, 200, 70, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(300, 164, 200, 70, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(550, 164, 200, 70, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(50, 242, 200, 70, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(300, 242, 200, 70, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(550, 242, 200, 70, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(50, 320, 200, 70, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(300, 320, 200, 70, verdadeiro, verdadeiro)
			gtk.desenhar_retangulo(550, 320, 200, 70, verdadeiro, verdadeiro)
*/

			chamadas_quadradas()

/*		
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
*/
			gtk.renderizar()
			
		}

			
	}
	
	funcao inicio(){
/*
		inteiro qtPts = 1
	  	logico end
	  	
	  	escreva("QUANTIA PONTOS DE REFERENCIA: ")
	  	leia(qtPts)
	  	
	  	inteiro rumos[qtPts]
	  	inteiro horaPouso
	  	inteiro gmt
	  	cadeia pontos[qtPts]
	  	inteiro indicativos[2]
	  	inteiro horaDecolagem
	  	real distancias[qtPts]
	  	real tempos[qtPts]
	  	real etos[qtPts]
	  	real consHora
	  	real distanciaTotal
	  	real consumoTotal
*/
		iniciarGTK(800, 400)

		inteiro tecla = 0
		logico loop_infinito = verdadeiro

		loop_infinito = loop_menu(loop_infinito, tecla)

		
		se(tecla == 66){
			escreva(tecla)
			initClient()
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5001; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */