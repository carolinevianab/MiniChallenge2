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


    var clicado = "";
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
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
        Ori1.setImage(UIImage(named: "Assexual-Pride-Flag.png"), for: UIControl.State.normal)
     }
     @IBAction func bntOri2(_ sender: Any) {
             self.clicado = "2"
             performSegue(withIdentifier: "segue2", sender: self)
        Ori2.setImage(UIImage(named: "Bisexual-Pride-Flag.png"), for: UIControl.State.normal)
         }
    @IBAction func bntOri3(_ sender: Any) {
            self.clicado = "3"
            performSegue(withIdentifier: "segue2", sender: self)
        Ori3.setImage(UIImage(named: "Homo2.png"), for: UIControl.State.normal)
        }
    @IBAction func bntOri4(_ sender: Any) {
            self.clicado = "4"
            performSegue(withIdentifier: "segue2", sender: self)
        Ori4.setImage(UIImage(named: "Pansexual-Pride-Flag.png"), for: UIControl.State.normal)
        
        }
    @IBAction func bntOri5(_ sender: Any) {
            self.clicado = "5"
            performSegue(withIdentifier: "segue2", sender: self)

        }
    @IBAction func bntOri6(_ sender: Any) {
               self.clicado = "6"
               performSegue(withIdentifier: "segue2", sender: self)
            Ori6.setImage(UIImage(named: "Demisexual-Pride-Flag.png"), for: UIControl.State.normal)
           }
    
     
     // Envia para a próxima view qual foi o botão clicado
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let vc = segue.destination as! OriTextoViewController
         vc.choice = clicado
     }

}
