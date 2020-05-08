//
//  ConquistaViewController.swift
//  Test
//
//  Created by Caroline Viana on 29/04/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

struct Achievement {
    let name: String
    let image: String
    let description: String
}


class AchievementViewController: UIViewController {
    
    var selected = ""
    var intSelected = 0
    
    @IBOutlet weak var titleAc: UILabel!
    @IBOutlet weak var textAc: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var background: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        background.layer.cornerRadius = 15
        
        // Aqui entram os textos e imagens das conquistas, deixei os números iguais (se vc clicar no botao 1, abre titulo 1 e por ai vai) pra ficar mais fácil de definir as coisas
        // Pra colocar imagem, arrasta ela pra dentro do projeto e coloca o nome dela na parte "image:", eu deixei uma imagem chamada "blank.png" porque ele quebra se deixar vazio
        let data =
            [Achievement(name: "Conquista 1", image: "ace.png", description: "Parabéns! Você desbloqueou a orientação sexual assexual!"),
        
            Achievement(name: "Conquista 2", image: "Bi.png", description: "Parabéns! Você desbloqueou a orientação sexual bissexual!"),
            
            Achievement(name: "Conquista 3", image: "Demi.png", description: "Parabéns! Você desbloqueou a orientação sexual demissexual!"),
            
            Achievement(name: "Conquista 4", image: "blank.png", description: "Parabéns! Você desbloqueou a orientação sexual heterossexual!"),
            Achievement(name: "Conquista 5", image: "Homo.png", description: "Parabéns! Você desbloqueou a orientação sexual homossexual!"),
            
            Achievement(name: "Conquista 6", image: "Pan.png", description: "Parabéns! Você desbloqueou a orientação sexual panssexual!"),
            
            Achievement(name: "Conquista 7", image: "Agenero.png", description: "Parabéns! Você desbloqueou a identidade de gênero agênero!"),
            
            Achievement(name: "Conquista 8", image: "Androgine.png", description: "Parabéns! Você desbloqueou a identidade de gênero androginia!"),
            
            Achievement(name: "Conquista 9", image: "blank.png", description: "Parabéns! Você desbloqueou a identidade de gênero cisgênero!"),
            
            Achievement(name: "Conquista 10", image: "Genero fluido.png", description: "Parabéns! Você desbloqueou a identidade de gênero gênero fluído!"),
            
            Achievement(name: "Conquista 11", image: "Intergenero.png", description: "Parabéns! Você desbloqueou a identidade de gênero intergênero!"),
            
            Achievement(name: "Conquista 12", image: "Nao binario.png", description: "Parabéns! Você desbloqueou a identidade de gênero não binário!"),
            
            Achievement(name: "Conquista 13", image: "Queer.png", description: "Parabéns! Você desbloqueou a identidade de gênero queer!"),
            
            Achievement(name: "Conquista 14", image: "Trans.png", description: "Parabéns! Você desbloqueou a identidade de gênero transgênero!"),
            
            Achievement(name: "Conquista 15", image: "15b.png", description: "Parabéns! Você desbloqueou todas as orientações sexuais!"),
            
            Achievement(name: "Conquista 16", image: "16b.png", description: "Parabéns! Você desbloqueou todas as identidades de gênero!"),
            
            Achievement(name: "Conquista 17", image: "17b.png", description: "Parabéns! Você concluiu o jogo sobre orientações sexuais!"),
            
            Achievement(name: "Conquista 18", image: "18b.png", description: "Parabéns! Você concluiu o jogo sobre identidades de gênero!"),
            
            Achievement(name: "Conquista 19", image: "19b.png", description: "Parabéns! Você concluiu o jogo sobre perguntas gerais!"),
            
            Achievement(name: "Conquista 20", image: "20b.png", description: "Parabéns! Você concluiu todos os jogo!"),
            
            
        ]
        
        intSelected = Int(selected)!
        intSelected -= 1
        
        titleAc.text = data[intSelected].name
        textAc.text = data[intSelected].description
        image.image = UIImage(named: data[intSelected].image)
    }
}
