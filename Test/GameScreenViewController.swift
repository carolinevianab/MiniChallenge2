//
//  SecondViewController.swift
//  Test
//
//  Created by Caroline Viana on 05/04/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class GameScreenViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var backgroundTitle: UIButton!
    
    var clicked = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundTitle.layer.cornerRadius = 15
        
        // Botão bonito
        button1.layer.cornerRadius = 15
        button2.layer.cornerRadius = 15
        button3.layer.cornerRadius = 15
        button4.layer.cornerRadius = 15
    
    }
    
    // Definem qual foi o botão clicado
    @IBAction func bntGame1(_ sender: Any) {
        self.clicked = "1"
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    @IBAction func bntGame2(_ sender: Any) {
        self.clicked = "2"
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    @IBAction func bntGame3(_ sender: Any) {
        self.clicked = "3"
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    @IBAction func bntGame4(_ sender: Any) {
        self.clicked = "4"
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    // Envia para a próxima view qual foi o botão clicado
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! GameViewController
        vc.choice = clicked
    }
    
}
