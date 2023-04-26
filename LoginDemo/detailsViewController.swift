//
//  detailsViewController.swift
//  LoginDemo
//
//  Created by Apple on 15/12/22.
//

import UIKit

class detailsViewController: UIViewController {

    var person: Person?

    @IBOutlet weak var nameUILabel: UILabel!
    @IBOutlet weak var phoneNumberUILabel: UILabel!
    @IBOutlet weak var eMailUILabel: UILabel!
    @IBOutlet weak var passwordUILabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nameUILabel.text = person?.fullName
        let phoneNumber = person?.phoneNumber ?? 0
        phoneNumberUILabel.text = "\(phoneNumber)"
        eMailUILabel.text = person?.emailAddress
        passwordUILabel.text = person?.password
        
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

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
