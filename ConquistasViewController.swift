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
    var jogo4 = false
    var b1Active: Bool!
    var b2Active: Bool!
    var b3Active: Bool!
    var b4Active: Bool!
    var b5Active: Bool!
    var b6Active: Bool!
    var b7Active: Bool!
    var b8Active: Bool!
    var b9Active: Bool!
    var b10Active: Bool!
    var b11Active: Bool!
    var b12Active: Bool!
    var b13Active: Bool!
    var b14Active: Bool!
    var b15Active: Bool!
    var b16Active: Bool!
    var b17Active: Bool! //= false
    var b18Active: Bool! //= false
    var b19Active: Bool! //= false
    var b20Active: Bool! //= false
    
    
    let defaults = UserDefaults.standard
    
    struct Keys {
        static let b1IsActive = "b1IsActive"
        static let b2IsActive = "b2IsActive"
        static let b3IsActive = "b3IsActive"
        static let b4IsActive = "b4IsActive"
        static let b5IsActive = "b5IsActive"
        static let b6IsActive = "b6IsActive"
        static let b7IsActive = "b7IsActive"
        static let b8IsActive = "b8IsActive"
        static let b9IsActive = "b9IsActive"
        static let b10IsActive = "b10IsActive"
        static let b11IsActive = "b11IsActive"
        static let b12IsActive = "b12IsActive"
        static let b13IsActive = "b13IsActive"
        static let b14IsActive = "b14IsActive"
        static let b15IsActive = "b15IsActive"
        static let b16IsActive = "b16IsActive"
        static let b17IsActive = "b17IsActive"
        static let b18IsActive = "b18IsActive"
        static let b19IsActive = "b19IsActive"
        static let b20IsActive = "b20IsActive"
    }
    
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
        //super.performSegue(withIdentifier: "welcome", sender: self)
        //performSegue(withIdentifier: "welcome", sender: self)

        /*
        if UD == false{
            performSegue(withIdentifier: "BemVindo", sender: self)
        }*/

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
        
        b1.isEnabled = false
        b2.isEnabled = false
        b3.isEnabled = false
        b4.isEnabled = false
        b5.isEnabled = false
        b6.isEnabled = false
        b7.isEnabled = false
        b8.isEnabled = false
        b9.isEnabled = false
        b10.isEnabled = false
        b11.isEnabled = false
        b12.isEnabled = false
        b13.isEnabled = false
        b14.isEnabled = false
        b15.isEnabled = false
        b16.isEnabled = false
        b17.isEnabled = false
        b18.isEnabled = false
        b19.isEnabled = false
        b20.isEnabled = false
        
        defineDefaults()
        var i = 0
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
            i += 5
            self.carregar()
        }
        
        timer.fire()
        carregar()
    }
    
    func carregar(){
        let b1Activate = defaults.bool(forKey: Keys.b1IsActive)
        let b2Activate = defaults.bool(forKey: Keys.b2IsActive)
        let b3Activate = defaults.bool(forKey: Keys.b3IsActive)
        let b4Activate = defaults.bool(forKey: Keys.b4IsActive)
        let b5Activate = defaults.bool(forKey: Keys.b5IsActive)
        let b6Activate = defaults.bool(forKey: Keys.b6IsActive)
        let b7Activate = defaults.bool(forKey: Keys.b7IsActive)
        let b8Activate = defaults.bool(forKey: Keys.b8IsActive)
        let b9Activate = defaults.bool(forKey: Keys.b9IsActive)
        let b10Activate = defaults.bool(forKey: Keys.b10IsActive)
        let b11Activate = defaults.bool(forKey: Keys.b11IsActive)
        let b12Activate = defaults.bool(forKey: Keys.b12IsActive)
        let b13Activate = defaults.bool(forKey: Keys.b13IsActive)
        let b14Activate = defaults.bool(forKey: Keys.b14IsActive)
        let b15Activate = defaults.bool(forKey: Keys.b15IsActive)
        let b16Activate = defaults.bool(forKey: Keys.b16IsActive)
        let b17Activate = defaults.bool(forKey: Keys.b17IsActive)
        let b18Activate = defaults.bool(forKey: Keys.b18IsActive)
        let b19Activate = defaults.bool(forKey: Keys.b19IsActive)
        let b20Activate = defaults.bool(forKey: Keys.b20IsActive)
        
        if(b1Activate == true){
            b1.isEnabled = true
            b1Active = true
        }
        if(b2Activate == true){
            b2.isEnabled = true
            b2Active = true
        }
        if(b3Activate == true){
            b3.isEnabled = true
            b3Active = true
        }
        if(b4Activate == true){
            b4.isEnabled = true
            b4Active = true
        }
        if(b5Activate == true){
            b5.isEnabled = true
            b5Active = true
        }
        if(b6Activate == true){
            b6.isEnabled = true
            b6Active = true
        }
        if(b7Activate == true){
            b7.isEnabled = true
            b7Active = true
        }
        if(b8Activate == true){
            b8.isEnabled = true
            b8Active = true
        }
        if(b9Activate == true){
            b9.isEnabled = true
            b9Active = true
        }
        if(b10Activate == true){
            b10.isEnabled = true
            b10Active = true
        }
        if(b11Activate == true){
            b11.isEnabled = true
            b11Active = true
        }
        if(b12Activate == true){
            b12.isEnabled = true
            b12Active = true
        }
        if(b13Activate == true){
            b13.isEnabled = true
            b13Active = true
        }
        if(b14Activate == true){
            b14.isEnabled = true
            b14Active = true
        }
        if(b1.isEnabled == true && b2.isEnabled == true && b3.isEnabled == true && b4.isEnabled == true && b5.isEnabled == true && b6.isEnabled == true &&  b15Activate == true){
            b15.isEnabled = true
            b15Active = true
        }
        if(b7.isEnabled == true && b8.isEnabled == true && b9.isEnabled == true && b10.isEnabled == true && b11.isEnabled == true && b12.isEnabled == true && b13.isEnabled == true && b14.isEnabled == true &&  b16Activate == true){
            b16.isEnabled = true
            b16Active = true
        }
        if(b17Activate == true){
            b17.isEnabled = true
            b17Active = true
        }
        if(b18Activate == true){
            b18.isEnabled = true
        }
        if(b19Activate == true){
            b19.isEnabled = true
        }
        if(b17.isEnabled == true && b18.isEnabled == true && b19.isEnabled == true && b20Activate == true){
            b20.isEnabled = true
        }
        
      
    }
    
    func defineDefaults(){
        /*
        defaults.set(b17Active, forKey: Keys.b17IsActive)
        defaults.set(b18Active, forKey: Keys.b18IsActive)
        defaults.set(b19Active, forKey: Keys.b19IsActive)
        defaults.set(b20Active, forKey: Keys.b20IsActive)*/
    }
    
    
    @objc func defineClicked(_ sender: UIButton){
        self.clicked = sender.restorationIdentifier!
        performSegue(withIdentifier: "SegueAr", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AchievementViewController
        vc.selected = clicked
        }
    }
