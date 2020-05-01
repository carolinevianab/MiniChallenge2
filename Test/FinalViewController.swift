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

        backButton.layer.cornerRadius = 15
        backButton.layer.borderWidth = 1
        backButton.layer.borderColor = UIColor.gray.cgColor
        
        correctTotal.text = total //Coloca o total dentro da label na tela
        
    }
    
}
