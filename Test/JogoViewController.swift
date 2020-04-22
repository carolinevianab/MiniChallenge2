//
//  JogoViewController.swift
//  Test
//
//  Created by Caroline Viana on 06/04/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class JogoViewController: UIViewController {

    @IBOutlet weak var Pergunta: UILabel!
    
    @IBOutlet weak var resp1: UIButton!
    @IBOutlet weak var resp2: UIButton!
    @IBOutlet weak var resp3: UIButton!
    @IBOutlet weak var resp4: UIButton!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var ImagemQuiz: UIImageView!
    
    var escolha = "" //Recebido da view anterior
    var correct = "" //Respostas certa das perguntas, precisa ser global porque funções diferentes fazem a leitura dela
    var i = 0 //Variavel de contagem, pra passar as perguntas
    var perguntasAcertadas = 0 //Perguntas que foram acertadas na primeira tentativa, tambem é acessada por mais de uma função
    var aux = 0 //Variavel auxiliar pra contagem de perguntas certas
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.5824574828, green: 0.9204275012, blue: 0.6569642425, alpha: 1)
        
        // Botão bonito
        resp1.layer.cornerRadius = 15
        resp2.layer.cornerRadius = 15
        resp3.layer.cornerRadius = 15
        resp4.layer.cornerRadius = 15
        
        resp1.layer.borderWidth = 1
        resp2.layer.borderWidth = 1
        resp3.layer.borderWidth = 1
        resp4.layer.borderWidth = 1
        
        resp1.layer.borderColor = UIColor.gray.cgColor
        resp2.layer.borderColor = UIColor.gray.cgColor
        resp3.layer.borderColor = UIColor.gray.cgColor
        resp4.layer.borderColor = UIColor.gray.cgColor
        
        
        // Desativa o botão de próxima pergunta pra que não dê pra começar e dar pra clicar
        Next.setTitleColor(.white, for: .disabled)
        Next.isEnabled = false
        
        //Dependendo do valor de escolha, ativa um jogo diferente
        // Se escolha = 1, botão 1 quem foi clicado
        // Se escolha = 2, botão 2 quem foi clicado
        // Se escolha = 3, botão 3 quem foi clicado
        // Se escolha = 4, botão 4 quem foi clicado
        
        if (escolha == "1"){
            jogoBotao1(cont: i)
        }
        if (escolha == "2"){
            jogoBotao2()
        }
        if (escolha == "3"){
            jogoBotao3()
        }
        if (escolha == "4"){
            jogoBotao4()
        }
        
    }
    // Função do jogo 1
    func jogoBotao1(cont: Int) {
        let perguntas = [
            "Qual a característica da sexualidade assexual?",
            "Não sente atração por ninguém ou quase ninguém",
            "Sente atração por pessoas de   qualquer identidade de gênero, ou independentemente de gênero",
            "Alguém que sente atração pelo gênero oposto",
            "Podem sentir atração apenas caso exista uma conexão especial prévia",
            "1",
            
            "Pergunta2", "resposta11", "resposta12", "resposta13", "resposta14", "2",
            "Pergunta3", "resposta21", "resposta22", "resposta23", "resposta24", "3"]
        
        
        //If para de funcionar quando acaba o array de perguntas, e vai pro else, que faz o segue pra próxima tela
        if cont < perguntas.count{
            setQuiz(pergunta: perguntas[cont], resposta1: perguntas[cont+1], resposta2: perguntas[cont+2], resposta3: perguntas[cont+3], resposta4: perguntas[cont+4], respostaCerta: perguntas[cont+5])
        }
        else{
            performSegue(withIdentifier: "segueResul", sender: self)
        }
        
    }
    
    // Função do jogo 2
    func jogoBotao2(){
        Pergunta.text = escolha
        resp1.setTitle(escolha, for: .normal)
        resp2.setTitle(escolha, for: .normal)
        resp3.setTitle(escolha, for: .normal)
        resp4.setTitle(escolha, for: .normal)
    }
    
    // Função do jogo 3
    func jogoBotao3(){
        Pergunta.text = escolha
        resp1.setTitle(escolha, for: .normal)
        resp2.setTitle(escolha, for: .normal)
        resp3.setTitle(escolha, for: .normal)
        resp4.setTitle(escolha, for: .normal)
    }
    
    // Função do jogo 4
    func jogoBotao4(){
        Pergunta.text = escolha
        resp1.setTitle(escolha, for: .normal)
        resp2.setTitle(escolha, for: .normal)
        resp3.setTitle(escolha, for: .normal)
        resp4.setTitle(escolha, for: .normal)
    }
    
    // Função que prepara todo o quiz
    func setQuiz (pergunta: String, resposta1: String,resposta2: String,resposta3: String,resposta4: String,respostaCerta: String){
        
        // Define o botão padrão
        resp1.backgroundColor = .white
        resp2.backgroundColor = .white
        resp3.backgroundColor = .white
        resp4.backgroundColor = .white
        resp1.setTitleColor(.black, for: .normal)
        resp2.setTitleColor(.black, for: .normal)
        resp3.setTitleColor(.black, for: .normal)
        resp4.setTitleColor(.black, for: .normal)
        
        // Coloca os elementos do array nos lugares certos
        Pergunta.text = pergunta
        resp1.setTitle(resposta1, for: .normal)
        resp2.setTitle(resposta2, for: .normal)
        resp3.setTitle(resposta3, for: .normal)
        resp4.setTitle(resposta4, for: .normal)
        
        
        //Salva a resposta correta
        correct = respostaCerta
        
        //Define todos os botões como errado, e depois verifica qual a resposta certa pra redefinir o botão
        resp1.addTarget(self, action: #selector(errado), for: .touchUpInside)
        resp2.addTarget(self, action: #selector(errado), for: .touchUpInside)
        resp3.addTarget(self, action: #selector(errado), for: .touchUpInside)
        resp4.addTarget(self, action: #selector(errado), for: .touchUpInside)
        
        if correct == "1"{
            resp1.addTarget(self, action: #selector(certo), for: .touchUpInside)
        }
        if correct == "2"{
            resp2.addTarget(self, action: #selector(certo), for: .touchUpInside)
        }
        if correct == "3"{
            resp3.addTarget(self, action: #selector(certo), for: .touchUpInside)
        }
        if correct == "4"{
            resp4.addTarget(self, action: #selector(certo), for: .touchUpInside)
        }
        
        
    }
    
    func setImagemQuiz(Imagem: UIImage){
        ImagemQuiz.image = Imagem
    }
    
    // Função chamada quando o botão com a resposta certa é apertado; Muda o botão para verde e permite ir pra próxima tela
    @objc func certo(sender: UIButton){
        if sender.accessibilityIdentifier == correct {
            sender.backgroundColor = .green
            sender.setTitleColor(.black, for: .normal)
            Next.isEnabled = true
            perguntasAcertadas += 1
            aux = perguntasAcertadas
        }
    }
    
    // Função chamada quando o botão com a resposta errada é apertado; Muda o botão para vermelho
    @objc func errado(sender: UIButton){
        if sender.accessibilityIdentifier != correct {
            sender.backgroundColor = .red
            sender.setTitleColor(.white, for: .normal)
            if perguntasAcertadas == aux {
                perguntasAcertadas -= 1
            }
        }
    }
    
    //Botão para a próxima pergunta; Aumenta o contador e chama a função de definição novamente
    @IBAction func NextQuestion(_ sender: Any) {
        i = i + 6
        Next.isEnabled = false
        jogoBotao1(cont: i)
    }
    
    // Define a função para a segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! FinalViewController
        vc.total = String(perguntasAcertadas) //Envia para a próxima tela a quantidade de perguntas acertadas
    }
    
}
