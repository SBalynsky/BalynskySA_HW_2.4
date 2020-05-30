//
//  SecondViewController.swift
//  BalynskySA_HW_2.4
//
//  Created by Macbook on 30.05.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login:String?
    
    @IBOutlet weak var labelHello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let loginSecondVC = self.login else { return }
        labelHello.text = "Hello, \(loginSecondVC)"
        
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
