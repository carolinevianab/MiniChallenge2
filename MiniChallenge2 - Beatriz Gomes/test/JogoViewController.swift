//
//  JogoViewController.swift
//  Test
//
//  Created by Beatriz Gomes on 06/04/20.
//  Copyright © 2020 Beatriz Gomes. All rights reserved.
//

import UIKit

class JogoViewController: UIViewController {

    @IBOutlet weak var Pergunta: UILabel!
    
    @IBOutlet weak var resp1: UIButton!
    @IBOutlet weak var resp2: UIButton!
    @IBOutlet weak var resp3: UIButton!
    @IBOutlet weak var resp4: UIButton!
    @IBOutlet weak var Next: UIButton!
    
    var escolha = "" //Recebido da view anterior
    var correct = "" //Respostas certa das perguntas, precisa ser global porque funções diferentes fazem a leitura dela
    var i = 0 //Variavel de contagem, pra passar as perguntas
    var perguntasAcertadas = 0 //Perguntas que foram acertadas na primeira tentativa, tambem é acessada por mais de uma função
    var aux = 0 //Variavel auxiliar pra contagem de perguntas certas
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Botão bonito
        resp1.layer.cornerRadius = 15
        resp2.layer.cornerRadius = 15
        resp3.layer.cornerRadius = 15
        resp4.layer.cornerRadius = 15
        
        // Desativa o botão de próxima pergunta pra que não dê pra começar e dar pra clicar
        Next.setTitleColor(#colorLiteral(red: 0.9275141358, green: 0.791228354, blue: 1, alpha: 1), for: .disabled)
        Next.isEnabled = false
        
        //Dependendo do valor de escolha, ativa um jogo diferente
        // Se escolha = 1, botão 1 quem foi clicado
        // Se escolha = 2, botão 2 quem foi clicado
        // Se escolha = 3, botão 3 quem foi clicado
        // Se escolha = 4, botão 4 quem foi clicado
        
        if (escolha == "1"){
            jogoBotao1(cont: i)
        }
 
        
    }
    // Função do jogo 1
    func jogoBotao1(cont: Int) {
        let perguntas = [
            "Pergunta1", "resposta1", "resposta2", "resposta3", "resposta4", "1",
            "Pergunta2", "resposta11", "resposta12", "resposta13", "resposta14", "2",
            "Pergunta3", "resposta21", "resposta22", "resposta23", "resposta24", "3"]
        
        //If para de funcionar quando acaba o array de perguntas, e vai pro else, que faz o segue pra próxima tela
    //    if cont < perguntas.count{
      //      setQuiz(pergunta: perguntas[cont], resposta1: perguntas[cont+1], resposta2: perguntas[cont], resposta3: perguntas[cont+3], resposta4: perguntas[cont+4], respostaCerta: perguntas[cont+5])
        //}
        //else{
         //   performSegue(withIdentifier: "segueResul", sender: self)
       // }
        
    }
    
    
}
