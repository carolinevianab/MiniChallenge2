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
       
        b1.layer.cornerRadius = 15 ;
        b2.layer.cornerRadius = 15 ;
        b3.layer.cornerRadius = 15 ;
        b4.layer.cornerRadius = 15 ;
        b5.layer.cornerRadius = 15 ;
        b6.layer.cornerRadius = 15 ;
        b7.layer.cornerRadius = 15 ;
        b8.layer.cornerRadius = 15 ;
        b9.layer.cornerRadius = 15 ;
        b10.layer.cornerRadius = 15 ;
        b11.layer.cornerRadius = 15 ;
        b12.layer.cornerRadius = 15 ;
        b13.layer.cornerRadius = 15 ;
        b14.layer.cornerRadius = 15 ;
        b15.layer.cornerRadius = 15 ;
        b16.layer.cornerRadius = 15 ;
        b17.layer.cornerRadius = 15 ;
        b18.layer.cornerRadius = 15 ;
        b19.layer.cornerRadius = 15 ;
        b20.layer.cornerRadius = 15 ;

        
        b1.clipsToBounds = true
        b2.clipsToBounds = true
        b3.clipsToBounds = true
        b4.clipsToBounds = true
        b5.clipsToBounds = true
        b6.clipsToBounds = true
        b7.clipsToBounds = true
        b8.clipsToBounds = true
        b9.clipsToBounds = true
        b10.clipsToBounds = true
        b11.clipsToBounds = true
        b12.clipsToBounds = true
        b13.clipsToBounds = true
        b14.clipsToBounds = true
        b15.clipsToBounds = true
        b16.clipsToBounds = true
        b17.clipsToBounds = true
        b18.clipsToBounds = true
        b19.clipsToBounds = true
        b20.clipsToBounds = true
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
