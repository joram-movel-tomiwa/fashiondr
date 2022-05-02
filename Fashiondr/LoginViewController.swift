//
//  LoginViewController.swift
//  Fashiondr
//
//  Created by Joram Bosire on 4/24/22.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        
        user.signUpInBackground{ (success, error) in
            if success {
                self.performSegue(withIdentifier: "signUpSegue", sender: nil)
            } else{
                let alertController = UIAlertController(title: "Fashiondr", message:
                        "Account already exists for this username", preferredStyle: .alert)
                   alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

                   self.present(alertController, animated: true, completion: nil)
                print("Error: \(error?.localizedDescription)")
            }
        }
    }
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password){ (user,error) in
            if user != nil{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else{
                let alertController = UIAlertController(title: "Fashiondr", message:
                    "Error: Invalid username/password", preferredStyle: .alert)
                   alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

                   self.present(alertController, animated: true, completion: nil)
                print("Error: \(error?.localizedDescription)")
            }
        }
    }
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
