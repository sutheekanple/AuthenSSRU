//
//  RegisterViewController.swift
//  AuthenSSRU
//
//  Created by Student20 on 20/3/2562 BE.
//  Copyright © 2562 Sutheekan. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
//     My Outlet
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
  
    
    //  End Outlt

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }  //  Main Method
    
    
    @IBAction func upioadButton(_ sender: UIBarButtonItem){
        
        print("You Click Upload")
        
        let name = nameTextField.text!
        
        
        print("name = \(name)")
        
    }
    
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        
        
        
        print("You Cick Back")
        performSegue(withIdentifier: "BackMain", sender: self)
    }
    

}  //Main Class
