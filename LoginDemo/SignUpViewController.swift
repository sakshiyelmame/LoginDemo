//
//  SignUpViewController.swift
//  LoginDemo
//
//  Created by Apple on 13/12/22.
//

import UIKit
struct Person {
    let fullName:String
    let phoneNumber:Int
    let emailAddress:String
    let password:String
    
}


class SignUpViewController: UIViewController {
    var person: Person?

    @IBOutlet weak var fullNameUITextField: UITextField!
    @IBOutlet weak var phoneNumberUITextField: UITextField!
    @IBOutlet weak var emailAddressUITextField: UITextField!
    @IBOutlet weak var passwordUITextField: UITextField!
    @IBOutlet weak var outputUILabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
    
    @IBAction func saveButtonAction(_ sender: Any) {
        let name = fullNameUITextField.text ?? ""
        let phone = phoneNumberUITextField.text ?? ""
        let phoneNumber = Int(phone) ?? 0
        let email = emailAddressUITextField.text ?? ""
        let password = passwordUITextField.text ?? ""
        outputUILabel.text = "\(name), \(phone), \(email), \(password)"
        
        person = Person(fullName: name, phoneNumber: phoneNumber, emailAddress: email, password: password)
        let main = UIStoryboard(name: "Main", bundle: .none)
        let deatilVC = main.instantiateViewController(withIdentifier: "detailsViewController") as! detailsViewController
        deatilVC.person = person
        self.present(deatilVC, animated: true, completion: nil)
        
     
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
