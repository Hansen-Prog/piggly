//
//  registerController.swift
//  Pigly
//
//  Created by Andreas Hansen on 30/09/2019.
//  Copyright © 2019 Andreas Hansen. All rights reserved.
//

import UIKit

class registerController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var signUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
         gradientLayer.frame = self.view.bounds
         gradientLayer.colors = [UIColor(red: 63.0 / 255.0, green: 102.0 / 255.0, blue: 141.0 / 255.0, alpha: 1.0).cgColor,UIColor(red: 32.0 / 255.0, green: 51.0 / 255.0, blue: 71.0 / 255.0, alpha: 1.0).cgColor]
         self.view.layer.insertSublayer(gradientLayer, at: 0)
        signUpBtn.isEnabled = false
    }
    
    func checkPw(text: String) -> Bool {
        let capLettersRegex = ".*[A-Z]+.*"
        let textTest = NSPredicate(format: "SELF MATCHES %@", capLettersRegex)
        let capResult = textTest.evaluate(with: text)
        
        let numRegex = ".*[0-9]+.*"
        let textNumTest = NSPredicate(format: "SELF MATCHES %@", numRegex)
        let numResult = textNumTest.evaluate(with: text)
        
        let specCharRegex = ".*[!&^%$#@()/]+.*"
        let textSpecTest = NSPredicate(format: "SELF MATCHES %@", specCharRegex)
        let specResult = textSpecTest.evaluate(with: text)
        
        if (numResult && capResult && specResult == true) {
            return true
        } else {
            return false
        }
    }
    
    @IBAction func signUp(sender: Any?){
        let welcomeVc = WelcomeViewController()
        welcomeVc.username = email.text
    }
    @IBAction func textFieldValueChange(_ sender: UITextField) {
        let isSecure = checkPw(text: sender.text!)
        if (isSecure == true) {
            signUpBtn.isEnabled = true
        }
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
