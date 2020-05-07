//
//  BemVindoViewController.swift
//  Test
//
//  Created by Denys Roger on 06/05/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class BemVindoViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    var WelC : Bool!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! InstrucoesViewController
        vc.Welcome = WelC
        
    }
    
 

}
