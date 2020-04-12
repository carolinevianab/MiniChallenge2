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
        
        bntVoltar.layer.cornerRadius = 15
        PCertas.text = total //Coloca o total dentro da label na tela
        
    }
    
}
