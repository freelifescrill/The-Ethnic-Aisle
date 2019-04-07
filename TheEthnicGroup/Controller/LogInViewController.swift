//
//  LogInViewController.swift
//  TheEthnicGroup
//
//  Created by DJ Sellers/Rashii Henry on 7/21/18 on 12/16/18.
//  Copyright © 2018 DJ Sellers. All rights reserved.
//

import UIKit
import TwitterKit
import CoreData





// twitter extension
//fileprivate extension Selector {
//    static let buttonTapped = #selector(LogInViewController.buttonTapped)
//    static let deviceOrientationDidChange = #selector(UIViewController.deviceOrientationDidChange)
//}

class LogInViewController: UIViewController, UITextFieldDelegate {

    /*
     // MARK: - OUTLETS
     
     
     
     
     */
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var secretTextField: UITextField!
    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var textFieldContainer: UILabel!
    
    
    // TextField Support
    var BLANK = " "
    var invalCHAR: [String] = ["@","#","$","%","^","&","*",",","_","+","{","}","|",":","?",">","<","~"]
    var minChar = 6
    var maxChar = 15
    
    
    let usrname : String? = "YoungScrill"
    let password : String? = "EastAtlanta21"

//    @objc func keyboardWillShow(notification: NSNotification) {}
  //  @objc func keyboardWillHide(notification: NSNotification) {}
    
    /*
     // MARK: - ViewDidLoad/WillAppear
     */

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginWIthTwitter()
        
        //notification observers to hide
      NotificationCenter.default.addObserver(self, selector: #selector(LogInViewController.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
      NotificationCenter.default.addObserver(self, selector: #selector(LogInViewController.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        //rounded edges..
        self.logoLabel.layer.cornerRadius = 30
//        self.textFieldContainer.layer.cornerRadius = 15
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = UIImage(named: "prev-filled-100")

    }

    override func viewWillAppear(_ animated: Bool) {
        
        
        
       // guard let userInfo = Notification.userInfo else {return}

        //guard let keyboardSize = userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue else {return}
        
        
        
        if (validateEntries()){
            
            
        }
    }
    
    @objc private func keyboardWillShow(){
        
        
        
    }
    @objc private func keyboardWillHide(){
        //use core animation.. 
        
        
    }
    
    
    func loginWIthTwitter(){
        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if (session != nil) {
                print("signed in as \(String(describing: session?.userName))");
            } else {
                print("error: \(String(describing: error?.localizedDescription))");
            }
        })
        logInButton.center.x = self.view.center.x
        logInButton.center.y = self.view.center.y 
       // logInButton.perform(#selector(performTransition))
        //self.view.addSubview(logInButton)
        
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
//       var completeAuth = TWTRAuthConfig.init(consumerKey: self.usernameTextField.text ?? <#default value#>, consumerSecret: self.secretTextField.text ?? <#default value#>)
//        completeAuth.performSelector(inBackground: <#T##Selector#>, with: Any?)
        
        return TWTRTwitter.sharedInstance().application(app, open: url, options: options)
    }
    
    /*
     // MARK: - TouchesBegan/Moved/Canceled
     */
    
    
    
    
    
    
    
    /*
     //  MARK: - Buttons/Actions
     
     
     */
    
    
    
    @IBAction func LoginPressed(_ sender: Any) {
        //shows homepage
        if ((self.usernameTextField.text?.count)! < minChar || (self.secretTextField.text?.count)! < minChar){
            let blankAlert = UIAlertController(title: "Nice Try", message: "We havent figured out how to sign in with ghost usernames yet. Please fill in the blanks.", preferredStyle: .alert)
            
            blankAlert.addAction(UIAlertAction(title: "My mistake.", style: .cancel, handler: nil))
            //alert.addAction(UIAlertAction(title: "That's Lame", style: .cancel, handler: nil))
            
            self.present(blankAlert, animated: true)
        }
        if ((self.usernameTextField.text?.count)! > maxChar || (self.secretTextField.text?.count)! > maxChar){
            let invalAlert = UIAlertController(title: "We apologize", message: "Not a valid character.", preferredStyle: .alert)
            
            invalAlert.addAction(UIAlertAction(title: "Kool Beans", style: .cancel, handler: nil))
            //alert.addAction(UIAlertAction(title: "That's Lame", style: .cancel, handler: nil))
            
            self.present(invalAlert, animated: true)
        }
        if ((self.usernameTextField.text == usrname) && (self.secretTextField.text == password)) || (self.usernameTextField.text == "6789335296"){
            
            let appreciationAlert = UIAlertController(title: "We appreciate your visit back! ", message: "Keep up your weekly streak for a reward. You can also monitor your progress by grabbing the feather in your Cabin. ", preferredStyle: .alert)
            
            appreciationAlert.addAction(UIAlertAction(title: "Not a problem", style: .cancel, handler: nil))
            appreciationAlert.addAction(UIAlertAction(title: "Proceed", style: .default, handler: nil))
            
        }
        
    }
    
    //Pressed forgot btn
    @IBAction func ForgotPressed(_ sender: Any) {
        //shows forgot page
    }
    
     //Pressed register btn
    @IBAction func RegisterPressed(_ sender: Any) {
        //show register page
        let alert = UIAlertController(title: "We apologize", message: "Not taking registrations at this time.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Kool Beans", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Free Trial Username/Password", style: .default, handler:{ (action: UIAlertAction!) in
            print("Trial Code Login tapped.")
            
            self.performTransition()
        }))
        
        
        
        self.present(alert, animated: true)
        
        
    }
    
    @objc func performTransition(){
        
        self.performSegue(withIdentifier: "RegisterSegue", sender: self)

    }
    
    /*
     //  MARK: - Handle Touches
     
     
     */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.usernameTextField.resignFirstResponder()  //removes keyboard on screenTap
        self.secretTextField.resignFirstResponder()//removes keyboard on screenTap
    }
    
    
    
    /*
     //  MARK: - Entry Validation and Customization
     
     
     */
    
    func validateEntries() -> Bool {
        //method used to check if textfield is blank, too long,
        
        return true
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

extension UINavigationController {
    
    @IBInspectable var backgroundColor: UIColor {
        set {
            self.view.backgroundColor = newValue;
        }
        get {
            return self.view.backgroundColor ?? UIColor.init(red: 96.0/255.0, green: 79.0/255.0, blue: 23.0/255.0, alpha: 0.7);
        }
    }
    
}
