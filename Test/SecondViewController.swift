//
//  SecondViewController.swift
//  Test
//
//  Created by Caroline Viana on 05/04/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    var seila = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        button1.addTarget(self, action: #selector(teste), for: .touchUpInside)
        
        button1.layer.cornerRadius = 15
        button2.layer.cornerRadius = 15
        button3.layer.cornerRadius = 15
        button4.layer.cornerRadius = 15
    
    }
    
    @objc func teste(){
        print("bla")
    }
    
    @IBAction func bntJogo1(_ sender: Any) {
        self.seila = "1"
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    @IBAction func bntJogo2(_ sender: Any) {
        self.seila = "2"
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    @IBAction func bntJogo3(_ sender: Any) {
        self.seila = "3"
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    @IBAction func bntJogo4(_ sender: Any) {
        self.seila = "4"
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! JogoViewController
        vc.x = seila
    }
    
    /*
    
*/
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
