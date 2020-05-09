//
//  OrientacaoViewController.swift
//  Test
//
//  Created by Beatriz Gomes on 08/05/20.
//

import UIKit

class OrientacaoViewController: UIViewController {
    
    @IBOutlet weak var Ori1: UIButton!
    @IBOutlet weak var Ori2: UIButton!
    @IBOutlet weak var Ori3: UIButton!
    @IBOutlet weak var Ori4: UIButton!
    @IBOutlet weak var Ori5: UIButton!
    @IBOutlet weak var Ori6: UIButton!


    @IBOutlet weak var backgroundTitle: UIButton!
    
    var clicado = "";
    override func viewDidLoad() {
        
        super.viewDidLoad()
        backgroundTitle.layer.cornerRadius = 15
        
        Ori1.layer.cornerRadius = 15
        Ori2.layer.cornerRadius = 15
        Ori3.layer.cornerRadius = 15
        Ori4.layer.cornerRadius = 15
        Ori5.layer.cornerRadius = 15
        Ori6.layer.cornerRadius = 15
     
    }
    

    // Definem qual foi o botão clicado
     @IBAction func bntOri1(_ sender: Any) {
         self.clicado = "1"
         performSegue(withIdentifier: "segue2", sender: self)
        Ori1.setBackgroundImage(UIImage(named: "Assexual-Pride-Flag.png"), for: UIControl.State.normal)
        Ori1.setTitle("", for:.normal)
     }
     @IBAction func bntOri2(_ sender: Any) {
             self.clicado = "2"
             performSegue(withIdentifier: "segue2", sender: self)
        Ori2.setBackgroundImage(UIImage(named: "Bisexual-Pride-Flag.png"), for: UIControl.State.normal)
        Ori2.setTitle("", for:.normal)
        Ori1.setTitle("", for:.normal)
         }
    @IBAction func bntOri3(_ sender: Any) {
            self.clicado = "3"
            performSegue(withIdentifier: "segue2", sender: self)
        Ori3.setBackgroundImage(UIImage(named: "Homo2.png"), for: UIControl.State.normal)
        Ori3.setBackgroundImage(UIImage(named: "Homo.jpg"), for: UIControl.State.normal)
        Ori3.setTitle("", for:.normal)
        }
    @IBAction func bntOri4(_ sender: Any) {
            self.clicado = "4"
            performSegue(withIdentifier: "segue2", sender: self)
        Ori4.setBackgroundImage(UIImage(named: "Pansexual-Pride-Flag.png"), for: UIControl.State.normal)
        Ori4.setTitle("", for:.normal)
       
        }
    @IBAction func bntOri5(_ sender: Any) {
            self.clicado = "5"
            performSegue(withIdentifier: "segue2", sender: self)
        Ori5.setTitle("", for:.normal)
        Ori5.layer.cornerRadius = 0
        }
    @IBAction func bntOri6(_ sender: Any) {
               self.clicado = "6"
               performSegue(withIdentifier: "segue2", sender: self)
            Ori6.setBackgroundImage(UIImage(named: "Demisexual-Pride-Flag.png"), for: UIControl.State.normal)
            Ori6.setTitle("", for:.normal)
        Ori6.setTitle("", for:.normal)
           }
    
     
     // Envia para a próxima view qual foi o botão clicado
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let vc = segue.destination as! OriTextoViewController
         vc.choice = clicado
     }

}
