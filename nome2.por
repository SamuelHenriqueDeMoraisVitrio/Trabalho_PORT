programa
{
	inclua biblioteca Objetos --> obj
	inclua biblioteca Teclado -->tk
	inclua biblioteca Util --> ut
	inclua biblioteca Texto --> txt
	inclua biblioteca Graficos --> gtk

	funcao iniciarGTK(inteiro x, inteiro y){
		gtk.iniciar_modo_grafico(verdadeiro)
		gtk.definir_dimensoes_janela(x, y)
		gtk.definir_titulo_janela("Hello Word")
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

		para(inteiro i = 0; i < 30; i++){

			gtk.limpar()
			
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

		enquanto(verdadeiro){
			menu()
				
			tecla = tk.ler_tecla()

			se(tecla == 10){
				gtk.encerrar_modo_grafico()
				pare
			}

			se(tecla > 64 e tecla < 67){
				escreva(tecla)
				pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3395; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */