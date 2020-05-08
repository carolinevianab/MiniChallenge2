//
//  AboutTheAppViewController.swift
//  Test
//
//  Created by Caroline Viana on 08/05/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class AboutTheAppViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        background.layer.cornerRadius = 15
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
