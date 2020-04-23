//
//  JogoViewController.swift
//  Test
//
//  Created by Caroline Viana on 06/04/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

struct Questions {
    let Question: String
    let Answer1: String
    let Answer2: String
    let Answer3: String
    let Answer4: String
    let correctAnswer: String
    let ImageName: String
}

class JogoViewController: UIViewController {

    @IBOutlet weak var Pergunta: UILabel!
    
    @IBOutlet weak var resp1: UIButton!
    @IBOutlet weak var resp2: UIButton!
    @IBOutlet weak var resp3: UIButton!
    @IBOutlet weak var resp4: UIButton!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var gameImage: UIImageView!
    
    
    var choice = ""
    var correct = ""
    var i = 0
    var correctAnswers = 0
    var aux = 0
    
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
        
        Next.setTitleColor(.white, for: .disabled)
        Next.isEnabled = false
        
        //Dependendo do valor de escolha, ativa um jogo diferente
        // Se escolha = 1, botão 1 quem foi clicado
        // Se escolha = 2, botão 2 quem foi clicado
        // Se escolha = 3, botão 3 quem foi clicado
        // Se escolha = 4, botão 4 quem foi clicado
        if (choice == "1"){
            game1(cont: i)
        }
        if (choice == "2"){
            game2(cont: i)
        }
        if (choice == "3"){
            game3(cont: i)
        }
        if (choice == "4"){
            game4(cont: i)
        }
        
    }
    
    // Função do jogo 1
    func game1(cont: Int) {
        let questionsQuiz =
            [Questions(Question: "Qual a característica da sexualidade assexual?",
                       Answer1: "Não sente atração por ninguém ou quase ninguém",
                       Answer2: "Sente atração por pessoas de   qualquer identidade de gênero, ou independentemente de gênero",
                       Answer3: "Alguém que sente atração pelo gênero oposto",
                       Answer4: "Podem sentir atração apenas caso exista uma conexão especial prévia",
                       correctAnswer: "1",
                       ImageName: ""),
                
                Questions(Question: "Que bandeira é essa?",
                          Answer1: "Assexual",
                          Answer2: "Demissexual",
                          Answer3: "Pansexual",
                          Answer4: "Bissexual",
                          correctAnswer: "2",
                          ImageName: "Demisexual-Pride-Flag.png"),
        
                Questions(Question: "O que a cor roxa da bandeira bissexual significa?",
                          Answer1: "Uma das cores do arco-íris",
                          Answer2: "Comunidade",
                          Answer3: "Sexualidade",
                          Answer4: "Mistura do azul e do rosa",
                          correctAnswer: "4",
                          ImageName: "Bisexual-Pride-Flag.png")]
        
        if cont < questionsQuiz.count{
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
        else{
            performSegue(withIdentifier: "segueResul", sender: self)
        }
        
    }
    
    // Função do jogo 2
    func game2(cont: Int){
        let questionsQuiz =
            [Questions(Question: "O que a cor verde da bandeira agênero significa",
                       Answer1: "Todos os gêneros",
                       Answer2: "Combinação dos gêneros binários",
                       Answer3: "Mistura entre as qualidades femininas e masculinas",
                       Answer4: "Simboliza o gênero não binário",
                       correctAnswer: "4",
                       ImageName: "Agender-Pride-Flag.png"),
                
                Questions(Question: "Qual a característica da identidade de gênero não binário?",
                          Answer1: "Pessoas que mudam de gênero de tempos em tempos",
                          Answer2: "Ausência de gênero, gênero neutro, ou ausência de identidade de gênero.",
                          Answer3: "Alguém que se identifica com um gênero diferente do que lhe foi designado ao nascer",
                          Answer4: "Pessoas cujo gênero não é nem 100% homem e nem 100% mulher",
                          correctAnswer: "4",
                          ImageName: "")]
        
        if cont < questionsQuiz.count{
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)
        }
        else{
            performSegue(withIdentifier: "segueResul", sender: self)
        }
        
    }
    
    // Função do jogo 3
    func game3(cont: Int){
        let questionsQuiz =
            [Questions(Question: "Jogo 3 Pergunta 1",
                           Answer1: "resposta 1-1",
                           Answer2: "resposta 2-1",
                           Answer3: "resposta 3-1",
                           Answer4: "resposta 4-1",
                           correctAnswer: "1",
                           ImageName: "star2.png"),
                    
                    Questions(Question: "Jogo 3 Pergunta 2?",
                              Answer1: "resposta 1-2",
                              Answer2: "resposta 2-2",
                              Answer3: "resposta 3-2",
                              Answer4: "resposta 4-2",
                              correctAnswer: "2",
                              ImageName: "star2.png"),
            
                    Questions(Question: "Jogo 3 Pergunta 3?",
                              Answer1: "resposta 1-3",
                              Answer2: "resposta 2-3",
                              Answer3: "resposta 3-3",
                              Answer4: "resposta 4-3",
                              correctAnswer: "3",
                              ImageName: "star2.png"),
                    
                    Questions(Question: "Jogo 3 Pergunta 4?",
                              Answer1: "resposta 1-4",
                              Answer2: "resposta 2-4",
                              Answer3: "resposta 3-4",
                              Answer4: "resposta 4-4",
                              correctAnswer: "4",
                              ImageName: "star2.png")]
        
        if cont < questionsQuiz.count{
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)
        }
        else{
            performSegue(withIdentifier: "segueResul", sender: self)
        }
    }
    
    // Função do jogo 4
    func game4(cont: Int){
        let questionsQuiz =
            [Questions(Question: "Jogo 4 Pergunta 1",
                           Answer1: "resposta 1-1",
                           Answer2: "resposta 2-1",
                           Answer3: "resposta 3-1",
                           Answer4: "resposta 4-1",
                           correctAnswer: "1",
                           ImageName: "star2.png"),
                    
                    Questions(Question: "Jogo 4 Pergunta 2?",
                              Answer1: "resposta 1-2",
                              Answer2: "resposta 2-2",
                              Answer3: "resposta 3-2",
                              Answer4: "resposta 4-2",
                              correctAnswer: "2",
                              ImageName: "star2.png"),
            
                    Questions(Question: "Jogo 4 Pergunta 3?",
                              Answer1: "resposta 1-3",
                              Answer2: "resposta 2-3",
                              Answer3: "resposta 3-3",
                              Answer4: "resposta 4-3",
                              correctAnswer: "3",
                              ImageName: "star2.png"),
                    
                    Questions(Question: "Jogo 4 Pergunta 4?",
                              Answer1: "resposta 1-4",
                              Answer2: "resposta 2-4",
                              Answer3: "resposta 3-4",
                              Answer4: "resposta 4-4",
                              correctAnswer: "4",
                              ImageName: "star2.png")]
        
        if cont < questionsQuiz.count{
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)
        }
        else{
            performSegue(withIdentifier: "segueResul", sender: self)
        }
    }
    
    // Função que prepara todo o quiz
    func setQuiz (question: String, answer1: String, answer2: String, answer3: String, answer4: String, correctAnswer: String, ImageName: String){
        
        resp1.backgroundColor = .white
        resp2.backgroundColor = .white
        resp3.backgroundColor = .white
        resp4.backgroundColor = .white
        resp1.setTitleColor(.black, for: .normal)
        resp2.setTitleColor(.black, for: .normal)
        resp3.setTitleColor(.black, for: .normal)
        resp4.setTitleColor(.black, for: .normal)
        
        Pergunta.text = question
        resp1.setTitle(answer1, for: .normal)
        resp2.setTitle(answer2, for: .normal)
        resp3.setTitle(answer3, for: .normal)
        resp4.setTitle(answer4, for: .normal)
        
        correct = correctAnswer
        
        resp1.addTarget(self, action: #selector(wrongAnswer), for: .touchUpInside)
        resp2.addTarget(self, action: #selector(wrongAnswer), for: .touchUpInside)
        resp3.addTarget(self, action: #selector(wrongAnswer), for: .touchUpInside)
        resp4.addTarget(self, action: #selector(wrongAnswer), for: .touchUpInside)
        
        if correct == "1"{
            resp1.addTarget(self, action: #selector(rightAnswer), for: .touchUpInside)
        }
        if correct == "2"{
            resp2.addTarget(self, action: #selector(rightAnswer), for: .touchUpInside)
        }
        if correct == "3"{
            resp3.addTarget(self, action: #selector(rightAnswer), for: .touchUpInside)
        }
        if correct == "4"{
            resp4.addTarget(self, action: #selector(rightAnswer), for: .touchUpInside)
        }
        
        gameImage.image = UIImage(named: ImageName)
        
    }
    
    @objc func rightAnswer(sender: UIButton){
        if sender.accessibilityIdentifier == correct {
            sender.backgroundColor = .green
            sender.setTitleColor(.black, for: .normal)
            Next.isEnabled = true
            correctAnswers += 1
            aux = correctAnswers
        }
    }
    
    @objc func wrongAnswer(sender: UIButton){
        if sender.accessibilityIdentifier != correct {
            sender.backgroundColor = .red
            sender.setTitleColor(.white, for: .normal)
            if correctAnswers == aux {
                correctAnswers -= 1
            }
        }
    }
    
    @IBAction func NextQuestion(_ sender: Any) {
        i += 1
        Next.isEnabled = false
        
        if (choice == "1"){
            game1(cont: i)
        }
        if (choice == "2"){
            game2(cont: i)
        }
        if (choice == "3"){
            game3(cont: i)
        }
        if (choice == "4"){
            game4(cont: i)
        }
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! FinalViewController
        vc.total = String(correctAnswers)
    }
    
}
