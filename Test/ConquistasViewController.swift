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
    var b17Active = false
    var b18Active = false
    var b19Active = false
    var b20Active = false
    var UD = UserDefaults.standard.bool(forKey: "UserHasSeenWelcome")
    
    
    let defaults = UserDefaults.standard
    
    struct Keys {
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
        if UD == false{
            performSegue(withIdentifier: "BemVindo", sender: self)
        }

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
        
        b17.isEnabled = false
        b18.isEnabled = false
        b19.isEnabled = false
        b20.isEnabled = false
        
        defineDefaults()
        var i = 0
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
            print(i)
            i += 5
            self.carregar()
        }
        
        timer.fire()
        carregar()
    }
    
    func carregar(){
        let b17Activate = defaults.bool(forKey: Keys.b17IsActive)
        let b18Activate = defaults.bool(forKey: Keys.b18IsActive)
        let b19Activate = defaults.bool(forKey: Keys.b19IsActive)
        let b20Activate = defaults.bool(forKey: Keys.b20IsActive)
        
        if(b17Activate == true){
            b17.isEnabled = true
        }
        if(b18Activate == true){
            b18.isEnabled = true
        }
        if(b19Activate == true){
            b19.isEnabled = true
        }
        if(b20Activate == true){
            b20.isEnabled = true
        }
        
      
    }
    
    func defineDefaults(){
        defaults.set(b17Active, forKey: Keys.b17IsActive)
        defaults.set(b18Active, forKey: Keys.b18IsActive)
        defaults.set(b19Active, forKey: Keys.b19IsActive)
        defaults.set(b20Active, forKey: Keys.b20IsActive)
    }
    
    
    @objc func defineClicked(_ sender: UIButton){
        self.clicked = sender.restorationIdentifier!
        performSegue(withIdentifier: "SegueAr", sender: sender)
        if sender.restorationIdentifier == "2" {
            b17Active = true
            carregar()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if UD == true{
            let viewC = segue.destination as! BemVindoViewController
            viewC.WelC = UD
        }else{
        let vc = segue.destination as! AchievementViewController
        vc.selected = clicked
        }
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
