//
//  WelcomeViewController.swift
//  Chatt
//
//  Created by Ilham on 10/05/20.
//  Copyright © 2020 Ilham. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
     override func viewDidLoad() {
            super.viewDidLoad()
            
            titleLabel.text = ""
            var charIndex = 0.0
            let titleText = K.appName
            for letter in titleText {
                Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                    self.titleLabel.text?.append(letter)
                }
                charIndex += 1
            }
           
        }
        

    }

