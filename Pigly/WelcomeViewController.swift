//
//  WelcomeViewController.swift
//  Pigly
//
//  Created by Marcus Jensen on 30/09/2019.
//  Copyright © 2019 Andreas Hansen. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    var username: String!
    
    @IBOutlet weak var usernameTxt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
         gradientLayer.frame = self.view.bounds
         gradientLayer.colors = [UIColor(red: 63.0 / 255.0, green: 102.0 / 255.0, blue: 141.0 / 255.0, alpha: 1.0).cgColor,UIColor(red: 32.0 / 255.0, green: 51.0 / 255.0, blue: 71.0 / 255.0, alpha: 1.0).cgColor]
         self.view.layer.insertSublayer(gradientLayer, at: 0)
        usernameTxt.text = username
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
