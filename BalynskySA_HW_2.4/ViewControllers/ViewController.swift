//
//  ViewController.swift
//  BalynskySA_HW_2.4
//
//  Created by Macbook on 29.05.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let logIn = User.getUser()
   
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    
    @IBAction func logInButtonPushed() {
        if  loginTF.text == logIn.first?.login,
            passwordTF.text == logIn.first?.password {
            performSegue(withIdentifier: "userInfo", sender: nil)
        }
       
        showAlert(title: "Attention", message: "The password or login is incorrect")
        passwordTF.text = ""
        
        
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func loginHelpAction(_ sender: UIButton) {
        
        showAlert(title: "Notification", message: "Login: Alexey")
        
    }
    
    @IBAction func passwordHelpAction(_ sender: UIButton) {
        
        showAlert(title: "Notification", message: "Password: 1234")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "userInfo" {
            let tabBarController = segue.destination as! UITabBarController
        guard let userInfoVC = tabBarController.viewControllers?.first as?
            SecondViewController else {
            return
        }
        userInfoVC.login = loginTF.text
    }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func showAlert(title: String, message: String)  {
        let alert = UIAlertController(title: title,
                                           message: message,
                                           preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "Ok",
                                         style: .default,
                                         handler: nil)
        
        alert.addAction(okAlert)
        present(alert, animated: true, completion: nil)
    }
    
}

