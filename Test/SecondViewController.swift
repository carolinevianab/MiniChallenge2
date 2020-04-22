//
//  SecondViewController.swift
//  Test
//
//  Created by Caroline Viana on 05/04/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    var botaoClicado = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.5824574828, green: 0.9204275012, blue: 0.6569642425, alpha: 1)
        
        // Botão bonito
        button1.layer.cornerRadius = 15
        button2.layer.cornerRadius = 15
        button3.layer.cornerRadius = 15
        button4.layer.cornerRadius = 15
    
    }
    
    // Definem qual foi o botão clicado
    @IBAction func bntJogo1(_ sender: Any) {
        self.botaoClicado = "1"
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    @IBAction func bntJogo2(_ sender: Any) {
        self.botaoClicado = "2"
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    @IBAction func bntJogo3(_ sender: Any) {
        self.botaoClicado = "3"
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    @IBAction func bntJogo4(_ sender: Any) {
        self.botaoClicado = "4"
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    // Envia para a próxima view qual foi o botão clicado
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! JogoViewController
        vc.escolha = botaoClicado
    }
    
}
