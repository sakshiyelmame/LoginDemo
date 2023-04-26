//
//  ViewController.swift
//  LoginDemo
//
//  Created by Apple on 13/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeUILabel: UILabel!
    @IBOutlet weak var textUILabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func logInButtonAction(_ sender: Any) {
        let main = UIStoryboard(name: "Main", bundle: .none)
        let loginVC = main.instantiateViewController(withIdentifier: "LogInViewController")
        self.present(loginVC, animated: true, completion: nil)
        
    }
    
    @IBAction func signUpButtonAction(_ sender: Any) {
        let main = UIStoryboard(name: "Main", bundle: .none)
        let loginVC = main.instantiateViewController(withIdentifier: "SignUpViewController")
        self.present(loginVC, animated: true, completion: nil)
    }
    
}

