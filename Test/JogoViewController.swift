//
//  JogoViewController.swift
//  Test
//
//  Created by Caroline Viana on 06/04/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class JogoViewController: UIViewController {

    @IBOutlet weak var Pergunta: UILabel!
    
    @IBOutlet weak var resp1: UIButton!
    @IBOutlet weak var resp2: UIButton!
    @IBOutlet weak var resp3: UIButton!
    @IBOutlet weak var resp4: UIButton!
    
    var x = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Se x = 1, botão 1 quem foi clicado
        // Se x = 2, botão 2 quem foi clicado
        // Se x = 3, botão 3 quem foi clicado
        // Se x = 4, botão 4 quem foi clicado
        
        resp1.layer.cornerRadius = 15
        resp2.layer.cornerRadius = 15
        resp3.layer.cornerRadius = 15
        resp4.layer.cornerRadius = 15
        
        if (x == "1"){
            jogoBotao1()

        }
        if (x == "2"){
            jogoBotao2()
            

        }
        if (x == "3"){
            jogoBotao3()
           

        }
        if (x == "4"){
            jogoBotao4()
            
        }
        
    }
    func jogoBotao1() {
        
        
        Pergunta.text = "pergunta botao 1"
        resp1.setTitle("resposta 1 botao 1", for: .normal)
        resp2.setTitle("resposta 2 botao 1", for: .normal)
        resp3.setTitle("resposta 3 botao 1", for: .normal)
        resp4.setTitle("resposta 4 botao 1", for: .normal)
        
        
    }
    
    func jogoBotao2(){
        Pergunta.text = x
        resp1.setTitle(x, for: .normal)
        resp2.setTitle(x, for: .normal)
        resp3.setTitle(x, for: .normal)
        resp4.setTitle(x, for: .normal)
    }
    
    func jogoBotao3(){
        Pergunta.text = x
        resp1.setTitle(x, for: .normal)
        resp2.setTitle(x, for: .normal)
        resp3.setTitle(x, for: .normal)
        resp4.setTitle(x, for: .normal)
    }
    
    func jogoBotao4(){
        Pergunta.text = x
        resp1.setTitle(x, for: .normal)
        resp2.setTitle(x, for: .normal)
        resp3.setTitle(x, for: .normal)
        resp4.setTitle(x, for: .normal)
    }
    
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
    }*/
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
