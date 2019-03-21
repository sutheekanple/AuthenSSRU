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
        let user = userTextField.text!
        let password = passwordTextField.text!
        
        
        
        
        print("name = \(name)")
        print("user = \(user)")
        print("password = \(password)")
        
        if (name.count == 0) || (user.count == 0) || (password.count == 0) {
            myAlert(tileStrng: "Have Space", messagestring: "Please Fill All Blank")
        } else{
            
        }
        
        
    }  //  upioad Button
    
    func myAlert(tileStrng: String, messagestring: String) -> Void {
        
        
        
        print("title = \(tileStrng) , message =\(messagestring) ")
        let alert = UIAlertController(title: tileStrng, message: messagestring, preferredStyle: UIAlertController.Style.alert)

        
        alert.addAction(UIAlertAction(title: "KO", style: UIAlertAction.Style.default,handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        present(alert,animated: true,completion: nil)
        
        
    }  // myAlert
    
    func oplosdData(name: String, user: String,password: String) -> Void {
        
        
        let  urlString: String  = "https://www.androidthai.in.th/snru/addDataPle.php?isAdd=true&Name=\(name)&User=\(user)&password=\(password)"
        
        let url = URL(string: urlString)
        let request = NSMutableURLRequest(url: url!)
        
        let  task = URLSession.shared.dataTask(with: request as URLRequest) { data,respone,error in
            
            if error != nil{
               print("Error")
            } else {
                
                if let testData = data  {
                    
                    _ = NSString(data: testData,encoding: String.Encoding.utf8.rawValue)
                    print("canRead ==> \\String(descring:canReadData))")
                    
                    
                }
                
            }  // if1
            
            
        } // end Task
        task.resume()
        
        
        
        
    }
    
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        
        
        
        print("You Cick Back")
        performSegue(withIdentifier: "BackMain", sender: self)
    }
    

}  //  Main Class
