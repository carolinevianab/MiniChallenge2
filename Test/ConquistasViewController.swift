//
//  ConquistasViewController.swift
//  Test
//
//  Created by Caroline Viana on 29/04/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class ConquistasViewController: UIViewController {

    var clicked = ""
    
    // Esses são todos os botões presentes na view
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    @IBOutlet weak var b11: UIButton!
    @IBOutlet weak var b12: UIButton!
    @IBOutlet weak var b13: UIButton!
    @IBOutlet weak var b14: UIButton!
    @IBOutlet weak var b15: UIButton!
    @IBOutlet weak var b16: UIButton!
    @IBOutlet weak var b17: UIButton!
    @IBOutlet weak var b18: UIButton!
    @IBOutlet weak var b19: UIButton!
    @IBOutlet weak var b20: UIButton!
    @IBOutlet weak var b21: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        b1.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b2.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b3.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b4.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b5.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b6.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b7.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b8.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b9.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b10.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b11.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b12.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b13.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b14.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b15.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b16.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b17.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b18.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b19.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b20.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        b21.addTarget(self, action: #selector(defineClicked), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func defineClicked(_ sender: UIButton){
        self.clicked = sender.restorationIdentifier!
        performSegue(withIdentifier: "SegueAr", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AchievementViewController
        vc.selected = clicked
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
