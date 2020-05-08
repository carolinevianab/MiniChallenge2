//
//  InstrucoesViewController.swift
//  Test
//
//  Created by Denys Roger on 12/04/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class InstrucoesViewController: UIViewController {
    
    @IBOutlet weak var title1: UILabel! //Primeiro título
    @IBOutlet weak var title2: UILabel! //Segundo titulo
    @IBOutlet weak var text1: UILabel!  //Primeiro texto
    @IBOutlet weak var text2: UILabel!  //Segundo texto
    @IBOutlet weak var button: UIButton!
    var count = 0 //Contador utilizado para modificar o conteúdo das labels
    var Welcome : Bool!
    
    @IBOutlet weak var backgroundText1: UIButton!
    @IBOutlet weak var backgroundText2: UIButton!
    
    @IBOutlet weak var backgroundTitle1: UIButton!
    @IBOutlet weak var backgroundTitle2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundTitle1.layer.cornerRadius = 15
        backgroundText1.layer.cornerRadius = 15
        backgroundTitle2.layer.cornerRadius = 15
        backgroundText2.layer.cornerRadius = 15
        
        button.layer.cornerRadius = 15
        instanceLabel(countF: count)
        
    }
    
    func instanceLabel(countF : Int){
        
        let titles = ["Cards", "Card Desbloqueado", "Quiz", "Jogos", "Medalhas", "Áudio"]
        let texts = ["Nas janelas Gêneros e Orientações, você encontrará diversos cards        bloqueados, cada card contém informações sobre um tipo de orientação sexual     ou identidade de gênero, você pode desbloqueá-los apenas clicando sobre uma     das bandeiras de interrogação.",
            "Ao desbloquear um card, ele abrirá com algumas informações sobre a orientação sexual/identidade de gênero e sua(s) bandeira(s), basta deslizar para o lado para ler todas as informações e deslizar para baixo para fechá-lo.",
            "Ao terminar de ler todas as informações sobre a orientação sexual/identidade de gênero será apresentado um quiz para testar os conhecimentos que você acabou de adquirir. Prestou atenção no que leu?",
            "Ao desbloquear todos os cards de orientações sexuais ou/e identidades de gênero será desbloqueado um jogo sobre o tema. Basta lembrar do que leu para conseguir completá-los!",
            "Você receberá medalhas ao desbloquear cards e completar os jogos, para ver suas conquistas basta clicar no ícone de medalhas.",
            "Todas as informações podem ser ouvidas ao clicar no ícone de áudio. Cuidado com o volume!"]
        
        
            if countF == 0{
                title1.text = titles[0]
                title2.text = titles[1]
                text1.text = texts[0]
                text2.text = texts[1]
                
            }else if countF == 1{
                title1.text = titles[2]
                title2.text = titles[3]
                text1.text = texts[2]
                text2.text = texts[3]
                
            }else if countF == 2{
                title1.text = titles[4]
                title2.text = titles[5]
                text1.text = texts[4]
                text2.text = texts[5]
            }
        
    }
             
    @IBAction func button(_ sender: Any) {
        count+=1
        instanceLabel(countF: count)
        if count == 3{
            Welcome = false
            UserDefaults.standard.set(Welcome, forKey: "UserHasSeenWelcome")
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let mainVC = storyboard.instantiateViewController(withIdentifier: "TabBarVC") as! UITabBarController
            self.present(mainVC, animated: true, completion: nil)
        }
    }
}
