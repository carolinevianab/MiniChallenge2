//
//  UserSeenWelcome.swift
//  Test
//
//  Created by Denys Roger on 06/05/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class UserSeenWelcome: UITabBarController {
    
    var UD = UserDefaults.standard.bool(forKey: "UserHasSeenWelcome")

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             if UD == false{
                 let vc = segue.destination as! InstrucoesViewController
              vc.Welcome = Bool(UD)
          }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UD == false{
            performSegue(withIdentifier: "BemVindo", sender: self)
        }
        // Do any additional setup after loading the view.
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
