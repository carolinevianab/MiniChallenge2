//
//  GeneroViewController.swift
//  Test
//
//  Created by Beatriz Gomes on 07/05/20.
//

import UIKit

class GeneroViewController: UIViewController {

    @IBOutlet weak var Gen1: UIButton!
    @IBOutlet weak var Gen2: UIButton!
    @IBOutlet weak var Gen3: UIButton!
    @IBOutlet weak var Gen4: UIButton!
    @IBOutlet weak var Gen5: UIButton!
    @IBOutlet weak var Gen6: UIButton!
    @IBOutlet weak var Gen7: UIButton!
    
    var clicado = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Gen1.layer.cornerRadius = 15
        Gen2.layer.cornerRadius = 15
        Gen3.layer.cornerRadius = 15
        Gen4.layer.cornerRadius = 15
        Gen5.layer.cornerRadius = 15
        Gen6.layer.cornerRadius = 15
        Gen7.layer.cornerRadius = 15
    }


    @IBAction func bntGen1(_ sender: Any) {
        self.clicado = "1"
        performSegue(withIdentifier: "segue3", sender: self)
           Gen1.setImage(UIImage(named: "Androgine-Pride-Flag.png"), for: UIControl.State.normal)
    }
    @IBAction func bntGen2(_ sender: Any) {
        self.clicado = "2"
        performSegue(withIdentifier: "segue3", sender: self)

    }
    @IBAction func bntGen3(_ sender: Any) {
        self.clicado = "3"
        performSegue(withIdentifier: "segue3", sender: self)
         Gen3.setImage(UIImage(named: "Generofluido.png"), for: UIControl.State.normal)

    }
    @IBAction func bntGen4(_ sender: Any) {
        self.clicado = "4"
        performSegue(withIdentifier: "segue3", sender: self)
         Gen4.setImage(UIImage(named: "Nao binario.png"), for: UIControl.State.normal)

    }
    @IBAction func bntGen5(_ sender: Any) {
           self.clicado = "5"
           performSegue(withIdentifier: "segue3", sender: self)
         Gen5.setImage(UIImage(named: "Intergenero.png"), for: UIControl.State.normal)

       }
    @IBAction func bntGen6(_ sender: Any) {
           self.clicado = "6"
           performSegue(withIdentifier: "segue3", sender: self)
         Gen6.setImage(UIImage(named: "Queer-Pride-Flag.png"), for: UIControl.State.normal)

       }
    @IBAction func bntGen7(_ sender: Any) {
           self.clicado = "7"
           performSegue(withIdentifier: "segue3", sender: self)
         Gen7.setImage(UIImage(named: "Transgender-Pride-Flag.png"), for: UIControl.State.normal)

       }
    
    // Envia para a próxima view qual foi o botão clicado
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let vc = segue.destination as! GTextoViewController
           vc.choice = clicado
       }
}
