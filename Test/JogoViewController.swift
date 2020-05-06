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
    @IBOutlet weak var TituloJogo: UILabel!
    @IBOutlet weak var SairJogo: UIButton!
    
    
    @IBOutlet weak var voceAcertou: UILabel!
    @IBOutlet weak var correctTotal: UILabel!
    @IBOutlet weak var parabens: UILabel!
    @IBOutlet weak var voltarAoInicio: UIButton!
    
    
    
    var choice = ""
    var correct = ""
    var i = 0
    var correctAnswers = 0
    var aux = 0
    var end = false
    var answered = 0
    var used = [9,9,9,9]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        voceAcertou.isEnabled = false
        correctTotal.isEnabled = false
        parabens.isEnabled = false
        voltarAoInicio.isEnabled = false
        voceAcertou.isHidden = true
        correctTotal.isHidden = true
        parabens.isHidden = true
        voltarAoInicio.isHidden = true
        
        
        // Botão bonito
        resp1.layer.cornerRadius = 15
        resp2.layer.cornerRadius = 15
        resp3.layer.cornerRadius = 15
        resp4.layer.cornerRadius = 15
        SairJogo.layer.cornerRadius = 15
        Next.layer.cornerRadius = 15
        
        resp1.layer.borderWidth = 1
        resp2.layer.borderWidth = 1
        resp3.layer.borderWidth = 1
        resp4.layer.borderWidth = 1
        
        resp1.layer.borderColor = UIColor.gray.cgColor
        resp2.layer.borderColor = UIColor.gray.cgColor
        resp3.layer.borderColor = UIColor.gray.cgColor
        resp4.layer.borderColor = UIColor.gray.cgColor
        
        
        
        resp1.titleLabel?.textAlignment = .left
        resp2.titleLabel?.textAlignment = .left
        resp3.titleLabel?.textAlignment = .left
        resp4.titleLabel?.textAlignment = .left
        
        
        Next.setTitleColor(#colorLiteral(red: 0.1882352941, green: 0.8588235294, blue: 0.3568627451, alpha: 1), for: .disabled)
        Next.setTitleColor(.black, for: .normal)
        Next.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.8588235294, blue: 0.3568627451, alpha: 1)
        Next.isEnabled = false
        
        //Dependendo do valor de escolha, ativa um jogo diferente
        // Se escolha = 1, botão 1 quem foi clicado
        // Se escolha = 2, botão 2 quem foi clicado
        // Se escolha = 3, botão 3 quem foi clicado
        // Se escolha = 4, botão 4 quem foi clicado
        
        if (choice == "1"){
            TituloJogo.text = "Orientação sexual"
            game1()
        }
        if (choice == "2"){
            TituloJogo.text = "Identidade de gênero"
            game2()
        }
        if (choice == "3"){
            TituloJogo.text = "Geral"
            game3()
        }
        if (choice == "4"){
            TituloJogo.text = "Jogo das bandeiras"
            game4()
        }
        
    }
    
    func randomQuestion() -> Int{
        var k = 9
        var loop = true
        while(loop == true){
            
            if(choice == "1"){
                k = Int.random(in: 0...10)
            }
            if(choice == "2"){
                k = Int.random(in: 0...14)
            }
            if(choice == "3"){
                if(answered == 0 || answered == 1){
                    k = Int.random(in: 0...10)
                }
                else{
                    k = Int.random(in: 0...14)
                }
            }
            if(choice == "4"){
                k = Int.random(in: 0...11)
            }
            
            
            for m in 0...3{
                if(k != used[m]) {
                    loop = false
                }
                else {
                    loop = true
                    break
                }
            }
        }
        if(choice != "3"){
            used[answered] = k
        }
        return k
    }
    
    // Função do jogo 1
    func game1() {
        let questionsQuiz =
            [Questions(Question: "Qual a característica da sexualidade assexual?",
                       Answer1: "Não sente atração por ninguém ou quase ninguém",
                       Answer2: "Sente atração por pessoas de qualquer identidade de gênero, ou independentemente de gênero",
                       Answer3: "Alguém que sente atração pelo gênero oposto",
                       Answer4: "Podem sentir atração apenas caso exista uma conexão especial prévia",
                       correctAnswer: "1",
                       ImageName: "Assexual-Pride-Flag.png"),
                
                Questions(Question: "O que a cor roxa da bandeira assexual significa?",
                          Answer1: "Uma das cores do arco-íris",
                          Answer2: "Comunidade",
                          Answer3: "Sexualidade",
                          Answer4: "Mistura do azul e do rosa",
                          correctAnswer: "2",
                          ImageName: "Assexual-Pride-Flag.png"),
                
                Questions(Question: "Qual a característica da sexualidade demisexual?",
                          Answer1: "Não sente atração por ninguém ou quase ninguém",
                          Answer2: "Sente atração por pessoas de qualquer identidade de gênero, ou independentemente de gênero",
                          Answer3: "Alguém que sente atração pelo gênero oposto",
                          Answer4: "Podem sentir atração apenas caso exista uma conexão especial prévia",
                          correctAnswer: "4",
                          ImageName: "Demisexual-Pride-Flag.png"),
                
                Questions(Question: "O que a cor branca da bandeira demisexual significa?",
                          Answer1: "Uma das cores do arco-íris",
                          Answer2: "Comunidade",
                          Answer3: "Sexualidade",
                          Answer4: "Mistura do azul e do rosa",
                          correctAnswer: "3",
                          ImageName: "Demisexual-Pride-Flag.png"),
                
                Questions(Question: "Qual a característica da sexualidade bissexual?",
                          Answer1: "Sente atração por pessoas de qualquer identidade de gênero",
                          Answer2: "Sente atração por dois ou mais gêneros",
                          Answer3: "Alguém que sente atração pelo gênero oposto",
                          Answer4: "Nenhuma das alternativas",
                          correctAnswer: "2",
                          ImageName: "Bisexual-Pride-Flag.png"),
                    
                Questions(Question: "O que a cor roxa da bandeira bissexual significa?",
                          Answer1: "Uma das cores do arco-íris",
                          Answer2: "Comunidade",
                          Answer3: "Sexualidade",
                          Answer4: "Mistura do azul e do rosa",
                          correctAnswer: "4",
                          ImageName: "Bisexual-Pride-Flag.png"),
        
                Questions(Question: "Uma pessoa homossexual…",
                          Answer1: "Sente atração pelo mesmo gênero",
                          Answer2: "Sente atração por dois ou mais gêneros",
                          Answer3: "Sente atração pelo gênero oposto",
                          Answer4: "Nenhuma das alternativas",
                          correctAnswer: "1",
                          ImageName: "Homo.jpg"),
                    
                Questions(Question: "O que a cor vermelha da bandeira homossexual significa?",
                          Answer1: "Uma das cores do arco-íris",
                          Answer2: "Vida",
                          Answer3: "Comunidade",
                          Answer4: "Sexualidade",
                          correctAnswer: "2",
                          ImageName: "Homo.jpg"),
        
                Questions(Question: "Qual a característica da sexualidade pansexual?",
                          Answer1: "Sente atração por pessoas de qualquer identidade de gênero",
                          Answer2: "Sente atração por dois ou mais gêneros",
                          Answer3: "Alguém que sente atração pelo gênero oposto",
                          Answer4: "Nenhuma das alternativas",
                          correctAnswer: "1",
                          ImageName: "Pansexual-Pride-Flag.png"),
                    
                Questions(Question: "O que a cor amarela da bandeira pansexual significa?",
                          Answer1: "Comunidade",
                          Answer2: "Uma das cores do arco-íris",
                          Answer3: "Sexualidade",
                          Answer4: "Atração sexual daqueles que se identificam como não-binários, andróginos, agêneros e gênero-fluído",
                          correctAnswer: "4",
                          ImageName: "Pansexual-Pride-Flag.png"),
        
                Questions(Question: "Qual a característica da sexualidade heterossexual?",
                          Answer1: "Sente atração por pessoas de qualquer identidade de gênero",
                          Answer2: "Sente atração por dois ou mais gêneros",
                          Answer3: "Alguém que sente atração pelo gênero oposto",
                          Answer4: "Nenhuma das alternativas",
                          correctAnswer: "3",
                          ImageName: "blank.png")]
        
        if answered < 4{
            i = randomQuestion()
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
        else{
            end = true
            final()
        }
        
    }
    
    // Função do jogo 2
    func game2(){
        let questionsQuiz =
            [Questions(Question: "O que a cor verde da bandeira agênero significa",
                       Answer1: "Todos os gêneros",
                       Answer2: "Combinação dos gêneros binários",
                       Answer3: "Mistura entre as qualidades femininas e masculinas",
                       Answer4: "Simboliza o gênero não binário",
                       correctAnswer: "4",
                       ImageName: "Agender-Pride-Flag.png"),
             
                Questions(Question: "Qual a característica da identidade de gênero agênero?",
                          Answer1: "Pessoas que mudam de gênero de tempos em tempos",
                          Answer2: "Ausência de gênero, gênero neutro, ou ausência de identidade de gênero.",
                          Answer3: "Alguém que se identifica com um gênero diferente do que lhe foi designado ao nascer",
                          Answer4: "Pessoas cujo gênero não é nem 100% homem e nem 100% mulher",
                          correctAnswer: "2",
                          ImageName: "Agender-Pride-Flag.png"),
                
                Questions(Question: "Qual a característica da identidade de gênero não binário?",
                          Answer1: "Pessoas que mudam de gênero de tempos em tempos",
                          Answer2: "Ausência de gênero, gênero neutro, ou ausência de identidade de gênero.",
                          Answer3: "Alguém que se identifica com um gênero diferente do que lhe foi designado ao nascer",
                          Answer4: "Pessoas cujo gênero não é nem 100% homem e nem 100% mulher",
                          correctAnswer: "4",
                          ImageName: "Nao binario.png"),
                
                Questions(Question: "O que a cor roxa da bandeira não-binário significa",
                          Answer1: "Fluidez e multiplicidade das experiências de gênero",
                          Answer2: "Combinação dos gêneros binários",
                          Answer3: "Todos os gêneros",
                          Answer4: "Simboliza o gênero não binário",
                          correctAnswer: "1",
                          ImageName: "Nao binario.png"),
                
                Questions(Question: "O que é uma pessoa andrógina?",
                          Answer1: "Pessoa cujo gênero está entre mulher e homem / é uma mescla de mulher e homem",
                          Answer2: "Pessoa que mudam de gênero de tempos em tempos",
                          Answer3: "Pessoa que se identifica e possui todas as características do gênero que lhe foi designado ao nascer",
                          Answer4: "Pessoa que se identifica com um gênero diferente do que lhe foi designado ao nascer",
                          correctAnswer: "1",
                          ImageName: "Androgine-Pride-Flag.png"),
                
                Questions(Question: "O que a cor roxa da bandeira andróginia significa",
                          Answer1: "Mistura entre as qualidades femininas e masculinas",
                          Answer2: "Ser agênero ou sem gênero",
                          Answer3: "Todos os gêneros",
                          Answer4: "Aqueles que estão em transição ou se consideram neutros/indefinidos",
                          correctAnswer: "1",
                          ImageName: "Androgine-Pride-Flag.png"),
                
                Questions(Question: "O que a cor verde da bandeira queer significa?",
                          Answer1: "Fluidez e multiplicidade das experiências de gênero",
                          Answer2: "Combinação dos gêneros binários",
                          Answer3: "Aqueles que estão em transição",
                          Answer4: "Pessoas cujas identidades não fazem referências a gêneros binários",
                          correctAnswer: "4",
                          ImageName: "Queer-Pride-Flag.png"),
                
                Questions(Question: "Qual a característica da identidade de gênero queer?",
                          Answer1: "Pessoas que mudam de gênero de tempos em tempos",
                          Answer2: "Pessoas que não são nem 100% homens, nem 100% mulheres e que agem radicalmente contra as normas de gênero",
                          Answer3: "Ausência de gênero, gênero neutro, ou ausência de identidade de gênero.",
                          Answer4: "Pessoas cujo gênero não é nem 100% homem e nem 100% mulher",
                          correctAnswer: "2",
                          ImageName: "Queer-Pride-Flag.png"),
        
                Questions(Question: "O que a cor branca da bandeira gênero fluido significa?",
                          Answer1: "Todos os gêneros",
                          Answer2: "Combinação dos gêneros binários",
                          Answer3: "Mistura entre as qualidades femininas e masculinas",
                          Answer4: "Simboliza o gênero não binário",
                          correctAnswer: "1",
                          ImageName: "Genero fluido.png"),
                
                   Questions(Question: "Qual a característica da identidade de gênero gênero fluido?",
                             Answer1: "Pessoas que mudam de gênero de tempos em tempos",
                             Answer2: "Ausência de gênero, gênero neutro, ou ausência de identidade de gênero.",
                             Answer3: "Alguém que se identifica com um gênero diferente do que lhe foi designado ao nascer",
                             Answer4: "Pessoas cujo gênero não é nem 100% homem e nem 100% mulher",
                             correctAnswer: "1",
                             ImageName: "Genero fluido.png"),
                    
                       Questions(Question: "Qual a característica da identidade de gênero cisgênero?",
                                 Answer1: "Pessoas que mudam de gênero de tempos em tempos",
                                 Answer2: "Ausência de gênero, gênero neutro, ou ausência de identidade de gênero.",
                                 Answer3: "Alguem que identifica e possui todas as características do gênero que lhe foi designado ao nascer",
                                 Answer4: "Pessoas cujo gênero não é nem 100% homem e nem 100% mulher",
                                 correctAnswer: "3",
                                 ImageName: "blank.png"),
        
                        Questions(Question: "O que a cor cinza da bandeira intergênero significa?",
                                  Answer1: "Ser agênero ou sem gênero",
                                  Answer2: "Gradiente entre os gêneros binários",
                                  Answer3: "Todos os gêneros",
                                  Answer4: "Aqueles que estão em transição",
                                  correctAnswer: "2",
                                  ImageName: "Intergenero.png"),
                        
                           Questions(Question: "Qual a característica da identidade de gênero intergênero?",
                                     Answer1: "Um gênero não-binário por si só",
                                     Answer2: "Ausência de gênero, gênero neutro, ou ausência de identidade de gênero.",
                                     Answer3: "Pessoas que mudam de gênero de tempos em tempos",
                                     Answer4: "Nenhuma das alternativas",
                                     correctAnswer: "1",
                                     ImageName: "Intergenero.png"),
                            
                            Questions(Question: "O que a cor branca da bandeira transgênero significa?",
                                      Answer1: "Fluidez e multiplicidade das experiências de gênero",
                                      Answer2: "Combinação dos gêneros binários",
                                      Answer3: "Aqueles que estão em transição",
                                      Answer4: "Pessoas cujas identidades não fazem referências a gêneros binários",
                                      correctAnswer: "3",
                                      ImageName: "Transgender-Pride-Flag.png"),
                            
                            Questions(Question: "Qual a característica da identidade de gênero transgênero?",
                                      Answer1: "Pessoas que mudam de gênero de tempos em tempos",
                                      Answer2: "Pessoas cujo gênero está entre mulher e homem, ou é uma mescla de mulher e homem.",
                                      Answer3: "Nenhuma das alternativas",
                                      Answer4: "Alguém que se identifica com um gênero diferente do que lhe foi designado ao nascer.",
                                      correctAnswer: "4",
                                      ImageName: "Transgender-Pride-Flag.png"),]
        
        if answered < 4{
            i = randomQuestion()
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)
        }
        else{
            end = true
            final()
        }
        
    }
    
    // Função do jogo 3
    func game3(){
        if answered == 0{
            game1()
        }
        if answered == 1{
            game1()
        }
        if answered == 2{
            game2()
        }
        if answered == 3{
            game2()
        }
        if answered == 4{
            game2()
        }
        
        if answered > 4{
            end = true
            final()
        }
    }
    
    // Função do jogo 4
    func game4(){
        let questionsQuiz =
            [Questions(Question: "Que bandeira é essa?",
                           Answer1: "Transgênero",
                           Answer2: "Intergênero",
                           Answer3: "Gênero fluído",
                           Answer4: "Queer",
                           correctAnswer: "1",
                           ImageName: "Transgender-Pride-Flag.png"),
                    
                    Questions(Question: "Que bandeira é essa?",
                              Answer1: "Assexual",
                              Answer2: "Demissexual",
                              Answer3: "Pansexual",
                              Answer4: "Nenhuma das alternativas",
                              correctAnswer: "3",
                              ImageName: "Pansexual-Pride-Flag.png"),
            
                    Questions(Question: "Que bandeira é essa?",
                              Answer1: "Homossexual",
                              Answer2: "Pansexual",
                              Answer3: "Bissexual",
                              Answer4: "Nenhuma das alternativas",
                              correctAnswer: "4",
                              ImageName: "Assexual-Pride-Flag.png"),
                    
                    Questions(Question: "Que bandeira é essa?",
                              Answer1: "Não binário",
                              Answer2: "Agênero",
                              Answer3: "Androginia",
                              Answer4: "Nenhuma das alternativas",
                              correctAnswer: "3",
                              ImageName: "Androgine-Pride-Flag.png"),
        
                    Questions(Question: "Que bandeira é essa?",
                              Answer1: "Assexual",
                              Answer2: "Demissexual",
                              Answer3: "Pansexual",
                              Answer4: "Bissexual",
                              correctAnswer: "2",
                              ImageName: "Demisexual-Pride-Flag.png"),
        
                    Questions(Question: "Que bandeira é essa?",
                              Answer1: "Assexual",
                              Answer2: "Demissexual",
                              Answer3: "Pansexual",
                              Answer4: "Bissexual",
                              correctAnswer: "4",
                              ImageName: "Bisexual-Pride-Flag.png"),
        
                    Questions(Question: "Que bandeira é essa?",
                              Answer1: "Pansexual",
                              Answer2: "Assexual",
                              Answer3: "Homossexual",
                              Answer4: "Bissexual",
                              correctAnswer: "3",
                              ImageName: "Homo.jpg"),
        
                    Questions(Question: "Que bandeira é essa?",
                              Answer1: "Não binário",
                              Answer2: "Agênero",
                              Answer3: "Andróginia",
                              Answer4: "Cisgênero",
                              correctAnswer: "2",
                              ImageName: "Agender-Pride-Flag.png"),
        
                    Questions(Question: "Que bandeira é essa?",
                            Answer1: "Não binário",
                            Answer2: "Gênero fluido",
                            Answer3: "Queer",
                            Answer4: "Intergênero",
                            correctAnswer: "2",
                            ImageName: "Generofluido.png"),
        
                    Questions(Question: "Que bandeira é essa?",
                              Answer1: "Não binário",
                              Answer2: "Gênero fluido",
                              Answer3: "Queer",
                              Answer4: "Intergênero",
                              correctAnswer: "4",
                              ImageName: "Intergenero.png"),
        
                    Questions(Question: "Que bandeira é essa?",
                            Answer1: "Transgênero",
                            Answer2: "Intergênero",
                            Answer3: "Gênero fluído",
                            Answer4: "Queer",
                            correctAnswer: "4",
                            ImageName: "Queer-Pride-Flag.png"),
        
                    Questions(Question: "Que bandeira é essa?",
                            Answer1: "Intergênero",
                            Answer2: "Agênero",
                            Answer3: "Não-binário",
                            Answer4: "Queer",
                            correctAnswer: "3",
                            ImageName: "Nao binario.png"),]
        
        if answered < 4{
            i = randomQuestion()
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)
        }
        else{
            end = true
            final()
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
        SairJogo.isEnabled = false
        SairJogo.isHidden = true
        
        if sender.accessibilityIdentifier == correct {
            sender.backgroundColor = .green
            sender.setTitleColor(.black, for: .normal)
            Next.isEnabled = true
            Next.backgroundColor = .white
            resp1.isEnabled = false
            resp2.isEnabled = false
            resp3.isEnabled = false
            resp4.isEnabled = false
            sender.isEnabled = true
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
        resp1.isEnabled = true
        resp2.isEnabled = true
        resp3.isEnabled = true
        resp4.isEnabled = true
        Next.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.8588235294, blue: 0.3568627451, alpha: 1)
        
        answered += 1
        //i = randomQuestion()
        
        if (choice == "1"){
            game1()
        }
        if (choice == "2"){
            game2()
        }
        if (choice == "3"){
            game3()
        }
        if (choice == "4"){
            game4()
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if end == true{
            let vc = segue.destination as! FinalViewController
            vc.total = String(correctAnswers)
        }
        
    }
    
    func final(){
        TituloJogo.text = "Resultados"
        Pergunta.isEnabled = false
        resp1.isEnabled = false
        resp2.isEnabled = false
        resp3.isEnabled = false
        resp4.isEnabled = false
        Next.isEnabled = false
        gameImage.isHidden = true
        Pergunta.isHidden = true
        resp1.isHidden = true
        resp2.isHidden = true
        resp3.isHidden = true
        resp4.isHidden = true
        Next.isHidden = true
        
        voceAcertou.isEnabled = true
        correctTotal.isEnabled = true
        parabens.isEnabled = true
        voltarAoInicio.isEnabled = true
        voceAcertou.isHidden = false
        correctTotal.isHidden = false
        parabens.isHidden = false
        voltarAoInicio.isHidden = false
        
        correctTotal.text = String(correctAnswers)
    }
    
    @IBAction func backToTheStart(_ sender: Any) {
        let a = ConquistasViewController()
        
        if choice == "1"{
            a.b17Active = true
            a.b17Active = true
        }
        if choice == "2"{
            a.b18Active = true
            a.b18Active = true
        }
        if choice == "3"{
            a.b19Active = true
            a.b19Active = true
        }
        if choice == "4"{
            a.b20Active = true
        }
        
        a.defineDefaults()
        self.dismiss(animated: true, completion: nil)
        
        if(isBeingDismissed == true){
            let a = ConquistasViewController()
            //a.b17Active = true
            //a.b17Active = true
            if choice == "1"{
                if(correctAnswers >= 4){
                    a.b17Active = true
                    a.b17Active = true
                }
            }
            if choice == "2"{
                if(correctAnswers >= 4){
                    a.b18Active = true
                    a.b18Active = true
                }
            }
            if choice == "3"{
                if(correctAnswers >= 4){
                    a.b19Active = true
                    a.b19Active = true
                }
            }
            if choice == "4"{
                if(correctAnswers >= 4){
                    a.b20Active = true
                }
            }
            a.defineDefaults()
        }
    }
    
}
