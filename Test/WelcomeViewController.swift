//
//  BemVindoViewController.swift
//  Test
//
//  Created by Denys Roger on 06/05/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    var WelC : Bool!
    
    
    @IBOutlet weak var background: UIButton!
    @IBOutlet weak var backgroundTitle: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        background.layer.cornerRadius = 15
        backgroundTitle.layer.cornerRadius = 15
        button.layer.cornerRadius = 15
        
    }
    
    @IBAction func button(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! InstructionsViewController
        vc.Welcome = WelC
        
    }
    
 

}
