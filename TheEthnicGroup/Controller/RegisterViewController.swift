//
//  RegisterViewController.swift
//  TheEthnicGroup
//
//  Created by DJ Sellers on 2/9/19.
//  Copyright © 2019 DJ Sellers. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBAction func registerButton(_ sender: Any) {
        self.dismiss(animated: true) {
            let alert = UIAlertController(title: "Thanks!", message: "Try signing in with the info you just provided.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Kool Beans", style: .default, handler:{ (action: UIAlertAction!) in
                print("New user registered.")
                
                
                self.performSegue(withIdentifier: "dismissSegue", sender: self)
            }))
            
            
            
            self.present(alert, animated: true)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        self.resignFirstResponder()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.resignFirstResponder()
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
