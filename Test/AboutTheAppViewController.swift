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
    @IBOutlet weak var backgroundTitle: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        background.layer.cornerRadius = 15
        backgroundTitle.layer.cornerRadius = 15
    }

}
