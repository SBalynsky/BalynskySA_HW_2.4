//
//  ViewController.swift
//  BalynskySA_HW_2.4
//
//  Created by Macbook on 29.05.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBAction func logInButtonPushed() {
        if let value = loginTF.text, (passwordTF.text != nil)  {
            if value == "Alex", passwordTF.text == "1234" {
                performSegue(withIdentifier: "userInfo", sender: nil)
            }
        }
        let alertLogin = UIAlertController(title: "Attention",
                                           message: "The password or login is incorrect",
                                           preferredStyle: .alert)
        let okAlertLogin = UIAlertAction(title: "Ok",
                                         style: .default,
                                         handler: nil)
        
        alertLogin.addAction(okAlertLogin)
        present(alertLogin, animated: true, completion: nil)
        
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func loginHelpAction(_ sender: UIButton) {
        let alertLogin = UIAlertController(title: nil,
                                           message: "Login: Alex",
                                           preferredStyle: .alert)
        let okAlertLogin = UIAlertAction(title: "Ok",
                                         style: .default,
                                         handler: nil)
        
        alertLogin.addAction(okAlertLogin)
        present(alertLogin, animated: true, completion: nil)
        
    }
    
    @IBAction func passwordHelpAction(_ sender: UIButton) {
        let alertPassword = UIAlertController(title: nil,
                                              message: "Password: 1234",
                                              preferredStyle: .alert)
        let okAlertPassword = UIAlertAction(title: "Ok",
                                            style: .default, handler: nil)
        
        alertPassword.addAction(okAlertPassword)
        present(alertPassword, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "userInfo" {
            let tabBarController = segue.destination as! UITabBarController
        guard let userInfoVC = tabBarController.viewControllers?.first as? SecondViewController else {
            return
        }
        userInfoVC.login = loginTF.text
    }
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

