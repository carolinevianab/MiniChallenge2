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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Aqui entram os textos e imagens das conquistas, deixei os números iguais (se vc clicar no botao 1, abre titulo 1 e por ai vai) pra ficar mais fácil de definir as coisas
        // Pra colocar imagem, arrasta ela pra dentro do projeto e coloca o nome dela na parte "image:", eu deixei uma imagem chamada "blank.png" porque ele quebra se deixar vazio
        let data =
            [Achievement(name: "Titulo 1", image: "blank.png", description: "texto 1"),
        
            Achievement(name: "Titulo 2", image: "blank.png", description: "texto 2"),
            
            Achievement(name: "Titulo 3", image: "blank.png", description: "texto 3"),
            
            Achievement(name: "Titulo 4", image: "blank.png", description: "texto 4"),
            Achievement(name: "Titulo 5", image: "blank.png", description: "texto 5"),
            
            Achievement(name: "Titulo 6", image: "blank.png", description: "texto 6"),
            
            Achievement(name: "Titulo 7", image: "blank.png", description: "texto 7"),
            
            Achievement(name: "Titulo 8", image: "blank.png", description: "texto 8"),
            
            Achievement(name: "Titulo 9", image: "blank.png", description: "texto 9"),
            
            Achievement(name: "Titulo 10", image: "blank.png", description: "texto 10"),
            
            Achievement(name: "Titulo 11", image: "blank.png", description: "texto 11"),
            
            Achievement(name: "Titulo 12", image: "blank.png", description: "texto 12"),
            
            Achievement(name: "Titulo 13", image: "blank.png", description: "texto 13"),
            
            Achievement(name: "Titulo 14", image: "blank.png", description: "texto 14"),
            
            Achievement(name: "Titulo 15", image: "blank.png", description: "texto 15"),
            
            Achievement(name: "Titulo 16", image: "blank.png", description: "texto 16"),
            
            Achievement(name: "Titulo 17", image: "blank.png", description: "texto 17"),
            
            Achievement(name: "Titulo 18", image: "blank.png", description: "texto 18"),
            
            Achievement(name: "Titulo 19", image: "blank.png", description: "texto 19"),
            
            Achievement(name: "Titulo 20", image: "blank.png", description: "texto 20"),
            
            Achievement(name: "Titulo 21", image: "blank.png", description: "texto 21"),
            
        ]
        
        intSelected = Int(selected)!
        intSelected -= 1
        
        titleAc.text = data[intSelected].name
        textAc.text = data[intSelected].description
        image.image = UIImage(named: data[intSelected].image)
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
