//
//  FinalViewController.swift
//  Test
//
//  Created by Caroline Viana on 09/04/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var correctTotal: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    
    var total = "" // Recebe da view anterior o total de respostas certas
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.5824574828, green: 0.9204275012, blue: 0.6569642425, alpha: 1)

        backButton.layer.cornerRadius = 15
        backButton.layer.borderWidth = 1
        backButton.layer.borderColor = UIColor.gray.cgColor
        
        correctTotal.text = total //Coloca o total dentro da label na tela
        
    }
    
}
