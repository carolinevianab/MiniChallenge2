//
//  FinalViewController.swift
//  Test
//
//  Created by Caroline Viana on 09/04/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var PCertas: UILabel!
    @IBOutlet weak var bntVoltar: UIButton!
    
    
    var total = "" // Recebe da view anterior o total de respostas certas
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.5824574828, green: 0.9204275012, blue: 0.6569642425, alpha: 1)

        
        
        bntVoltar.layer.cornerRadius = 15
        bntVoltar.layer.borderWidth = 1
        bntVoltar.layer.borderColor = UIColor.gray.cgColor
        
        PCertas.text = total //Coloca o total dentro da label na tela
        
    }
    
}
