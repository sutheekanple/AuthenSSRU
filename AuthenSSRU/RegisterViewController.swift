//
//  RegisterViewController.swift
//  AuthenSSRU
//
//  Created by Student20 on 20/3/2562 BE.
//  Copyright © 2562 Sutheekan. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }  //  Main Method
    
    
    @IBAction func upioadButton(_ sender: UIBarButtonItem)
    {
    }
    
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        
        print("You Cick Back")
        performSegue(withIdentifier: "BackMain", sender: self)
    }
    

}  //Main Class
