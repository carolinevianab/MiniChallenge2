//
//  QuizOrViewController.swift
//  Test
//
//  Created by Caroline Viana on 08/05/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class QuizOrViewController: UIViewController {

        @IBOutlet weak var resp1: UIButton!
       @IBOutlet weak var resp2: UIButton!
       @IBOutlet weak var resp3: UIButton!
       @IBOutlet weak var resp4: UIButton!
       @IBOutlet weak var lblQuestion: UILabel!
       @IBOutlet weak var quitGame: UIButton!
       @IBOutlet weak var gameImage: UIImageView!
       @IBOutlet weak var nextQ: UIButton!
       @IBOutlet weak var gameTitle: UILabel!
       var choice = ""
       var correct = ""
       var correctAnswers = 0
       var aux = 0
       var i = 0
       var answered = 0

       override func viewDidLoad() {
           super.viewDidLoad()
           
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

           // Do any additional setup after loading the view.
           if (choice == "1"){
                gameTitle.text = "Assexual"
               Assexual()
           }
           if (choice == "2"){
                gameTitle.text = "Bisexual"
               bisexual()
           }
           if (choice == "3"){
                gameTitle.text = "Homosexual"
               homosexual()
           }
           if (choice == "4"){
                gameTitle.text = "Pansexual"
               pansexual()
           }
           if (choice == "5"){
                gameTitle.text = "Heterosexual"
               heterosexual()
           }
           if (choice == "6"){
                gameTitle.text = "Demisexual"
               demisexual()
           }

       }
       
       
       func Assexual(){
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
                     ImageName: "Assexual-Pride-Flag.png")]
           
           if answered < 2{
               setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
           else{
               ending()
           }
       }
       
       func demisexual(){
           let questionsQuiz =
           [Questions(Question: "Qual a característica da sexualidade demisexual?",
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
                     ImageName: "Demisexual-Pride-Flag.png")]
           
           if answered < 2{
               setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
           else{
               ending()
           }

       }
       
       func bisexual(){
           let questionsQuiz =
           [Questions(Question: "Qual a característica da sexualidade bissexual?",
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
                     ImageName: "Bisexual-Pride-Flag.png"),]
           
           if answered < 2{
               setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
           else{
               ending()
           }
       }
       
       func homosexual(){
           let questionsQuiz =
           [                Questions(Question: "Uma pessoa homossexual…",
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
]
           
           if answered < 2{
               setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
           else{
               ending()
           }

       }
       
       func pansexual(){
           let questionsQuiz =
               [
           
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
                                            ImageName: "Pansexual-Pride-Flag.png")]
           
           if answered < 2{
               setQuiz(question: questionsQuiz[i].Question, answer1: questionsQuiz[i].Answer1, answer2: questionsQuiz[i].Answer2, answer3: questionsQuiz[i].Answer3, answer4: questionsQuiz[i].Answer4, correctAnswer: questionsQuiz[i].correctAnswer, ImageName: questionsQuiz[i].ImageName)        }
           else{
               ending()
           }

       }
       
       func heterosexual(){
           let questionsQuiz =
           [Questions(Question: "Qual a característica da sexualidade heterossexual?",
           Answer1: "Sente atração por pessoas de qualquer identidade de gênero",
           Answer2: "Sente atração por dois ou mais gêneros",
           Answer3: "Alguém que sente atração pelo gênero oposto",
           Answer4: "Nenhuma das alternativas",
           correctAnswer: "3",
           ImageName: "blank.png")]
           
           if answered < 1{
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
           quitGame.isEnabled = false
           quitGame.isHidden = true
           
           if sender.accessibilityIdentifier == correct {
               sender.backgroundColor = .green
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
               sender.backgroundColor = .red
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
                         gameTitle.text = "Androginia"
                         Assexual()
                     }
                     if (choice == "2"){
                         bisexual()
                     }
                     if (choice == "3"){
                         homosexual()
                     }
                     if (choice == "4"){
                         pansexual()
                     }
                     if (choice == "5"){
                         heterosexual()
                     }
                     if (choice == "6"){
                         demisexual()
                     }       }
       
       @IBAction func gameOut(_ sender: Any) {
           self.dismiss(animated: true, completion: nil)
       }
       
       func ending(){
           self.dismiss(animated: true, completion: nil)
        
        if(isBeingDismissed == true){
            let a = ConquistasViewController()
            if(correctAnswers >= 2){
                if (choice == "1"){
                    a.b1Active = true
                    a.defaults.set(a.b1Active, forKey: "b1IsActive")
                }
                if (choice == "2"){
                    a.b2Active = true
                    a.defaults.set(a.b2Active, forKey: "b2IsActive")
                }
                if (choice == "3"){
                    a.b5Active = true
                    a.defaults.set(a.b5Active, forKey: "b5IsActive")
                }
                if (choice == "4"){
                    a.b6Active = true
                    a.defaults.set(a.b6Active, forKey: "b6IsActive")
                }
                if (choice == "6"){
                    a.b3Active = true
                    a.defaults.set(a.b3Active, forKey: "b6IsActive")
                }
            }
            if(correctAnswers >= 1){
                if (choice == "5"){//
                    a.b4Active = true
                    a.defaults.set(a.b4Active, forKey: "b4IsActive")
                }
            }
            
            
            a.b15Active = true
            a.defaults.set(a.b15Active, forKey: "b15IsActive")

        }
       }
       
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
