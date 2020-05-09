//
//  QuizViewController.swift
//  Test
//
//  Created by Caroline Viana on 08/05/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class QuizIdViewController: UIViewController {
    
    @IBOutlet weak var resp1: UIButton!
    @IBOutlet weak var resp2: UIButton!
    @IBOutlet weak var resp3: UIButton!
    @IBOutlet weak var resp4: UIButton!
    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var quitGame: UIButton!
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var nextQ: UIButton!
    @IBOutlet weak var gameTitle: UILabel!
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var backgroundTitle: UIButton!
    
    var choice = ""
    var correct = ""
    var correctAnswers = 0
    var aux = 0
    var i = 0
    var answered = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        background.layer.cornerRadius = 15
        backgroundTitle.layer.cornerRadius = 15
        
        resp1.layer.cornerRadius = 15
        resp2.layer.cornerRadius = 15
        resp3.layer.cornerRadius = 15
        resp4.layer.cornerRadius = 15
        quitGame.layer.cornerRadius = 15
        nextQ.layer.cornerRadius = 15
        quitGame.layer.cornerRadius = 15
        
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

        if (choice == "1"){
            gameTitle.text = "Androginia"
            Androgine()
        }
        if (choice == "2"){
            gameTitle.text = "Cisgênero"
            cisgender()
        }
        if (choice == "3"){
            gameTitle.text = "Gênero Fluido"
            genderFluid()
        }
        if (choice == "4"){
            gameTitle.text = "Não Binário"
            nonBinary()
        }
        if (choice == "5"){
            gameTitle.text = "Intergênero"
            intergender()
        }
        if (choice == "6"){
            gameTitle.text = "Queer"
            queer()
        }
        if (choice == "7"){
            gameTitle.text = "Transgênero"
            transgender()
        }
        if (choice == "8"){
            gameTitle.text = "Agênero"
            agender()
        }

    }
    
    
    func agender(){
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
                      ImageName: "Agender-Pride-Flag.png")]
        
        if answered < 2{
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
        else{
            ending()
        }
    }
    
    func nonBinary(){
        let questionsQuiz =
        [Questions(Question: "Qual a característica da identidade de gênero não binário?",
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
                      ImageName: "Nao binario.png")]
        
        if answered < 2{
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
        else{
            ending()
        }

    }
    
    func Androgine(){
        let questionsQuiz =
        [Questions(Question: "O que é uma pessoa andrógina?",
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
                      ImageName: "Androgine-Pride-Flag.png")]
        
        if answered < 2{
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
        else{
            ending()
        }
    }
    
    func queer(){
        let questionsQuiz =
        [Questions(Question: "O que a cor verde da bandeira queer significa?",
                  Answer1: "Fluidez e multiplicidade das experiências de gênero",
                  Answer2: "Combinação dos gêneros binários",
                  Answer3: "Aqueles que estão em transição",
                  Answer4: "Pessoas cujas identidades não fazem referências a gêneros binários",
                  correctAnswer: "4",
                  ImageName: "Queer-Pride-Flag.png"),
        
        Questions(Question: "Qual a característica da identidade de gênero queer?",
                  Answer1: "Pessoas que mudam de gênero de tempos em tempos",
                  Answer2: "Pessoas que não são 100% homens nem 100% mulheres, e agem contra as normas de gênero",
                  Answer3: "Ausência de gênero, gênero neutro, ou ausência de identidade de gênero.",
                  Answer4: "Pessoas cujo gênero não é nem 100% homem e nem 100% mulher",
                  correctAnswer: "2",
                  ImageName: "Queer-Pride-Flag.png")]
        
        if answered < 2{
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
        else{
            ending()
        }

    }
    
    func genderFluid(){
        let questionsQuiz =
            [Questions(Question: "O que a cor branca da bandeira gênero fluido significa?",
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
                             ImageName: "Genero fluido.png")]
        
        if answered < 2{
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
        else{
            ending()
        }

    }
    
    func cisgender(){
        let questionsQuiz =
            [Questions(Question: "Qual a característica da identidade de gênero cisgênero?",
                             Answer1: "Pessoas que mudam de gênero de tempos em tempos",
                             Answer2: "Ausência de gênero, gênero neutro, ou ausência de identidade de gênero.",
                             Answer3: "Alguem que identifica e possui todas as características do gênero que lhe foi designado ao nascer",
                             Answer4: "Pessoas cujo gênero não é nem 100% homem e nem 100% mulher",
                             correctAnswer: "3",
                             ImageName: "blank.png")]
        
        if answered < 1{
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
        else{
            ending()
        }

    }
    
    func intergender(){
        let questionsQuiz =
            [Questions(Question: "O que a cor cinza da bandeira intergênero significa?",
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
                                     ImageName: "Intergenero.png")]
        
        if answered < 2{
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
        else{
            ending()
        }

    }
    
    func transgender(){
        let questionsQuiz =
        [Questions(Question: "O que a cor branca da bandeira transgênero significa?",
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
                                  ImageName: "Transgender-Pride-Flag.png")]
        
        if answered < 2{
            setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
        else{
            ending()
        }

    }
    
    func setQuiz (question: String, answer1: String, answer2: String, answer3: String, answer4: String, correctAnswer: String, ImageName: String){
        
        resp1.backgroundColor = .white
        resp2.backgroundColor = .white
        resp3.backgroundColor = .white
        resp4.backgroundColor = .white
        resp1.setTitleColor(.black, for: .normal)
        resp2.setTitleColor(.black, for: .normal)
        resp3.setTitleColor(.black, for: .normal)
        resp4.setTitleColor(.black, for: .normal)
        
        lblQuestion.text = question
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
            sender.backgroundColor = #colorLiteral(red: 0.431372549, green: 0.8549019608, blue: 0.4705882353, alpha: 1)
            sender.setTitleColor(.black, for: .normal)
            nextQ.isEnabled = true
            nextQ.isHidden = false
            nextQ.backgroundColor = .white
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
            sender.backgroundColor = #colorLiteral(red: 1, green: 0.4117647059, blue: 0.3803921569, alpha: 1)
            sender.setTitleColor(.white, for: .normal)
            if correctAnswers == aux {
                correctAnswers -= 1
            }
        }
    }
    
    @IBAction func nextQ(_ sender: Any) {
        i += 1
        nextQ.isEnabled = false
        nextQ.isHidden = true
        resp1.isEnabled = true
        resp2.isEnabled = true
        resp3.isEnabled = true
        resp4.isEnabled = true
        
        answered += 1
        
        if (choice == "1"){
            Androgine()
        }
        if (choice == "2"){
            cisgender()
        }
        if (choice == "3"){
            genderFluid()
        }
        if (choice == "4"){
            nonBinary()
        }
        if (choice == "5"){
            intergender()
        }
        if (choice == "6"){
            queer()
        }
        if (choice == "7"){
            transgender()
        }
        if (choice == "8"){
            agender()
        }
    }
    
    @IBAction func gameOut(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func ending(){
        self.dismiss(animated: true, completion: nil)
        
        if(isBeingDismissed == true){
            let a = AchievementScreenViewController()
            if(correctAnswers >= 2){
                if (choice == "1"){
                    a.b8Active = true
                    a.defaults.set(a.b8Active, forKey: "b8IsActive")
                }
                if (choice == "3"){
                    a.b10Active = true
                    a.defaults.set(a.b10Active, forKey: "b10IsActive")
                }
                if (choice == "4"){
                    a.b12Active = true
                    a.defaults.set(a.b12Active, forKey: "b12IsActive")
                }
                if (choice == "5"){
                    a.b11Active = true
                    a.defaults.set(a.b11Active, forKey: "b11IsActive")
                }
                if (choice == "6"){
                    a.b13Active = true
                    a.defaults.set(a.b13Active, forKey: "b13IsActive")
                }
                if (choice == "7"){
                    a.b14Active = true
                    a.defaults.set(a.b14Active, forKey: "b14IsActive")
                }
                if (choice == "8"){
                    a.b7Active = true
                    a.defaults.set(a.b7Active, forKey: "b7IsActive")
                }
                
            }
            if(correctAnswers >= 1){
                if (choice == "2"){
                    a.b9Active = true
                    a.defaults.set(a.b9Active, forKey: "b9IsActive")
                }
            }
            
            a.b16Active = true
            a.defaults.set(a.b16Active, forKey: "b16IsActive")
            
        }
    }

}
