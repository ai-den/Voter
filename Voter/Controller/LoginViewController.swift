//
//  LoginViewController.swift
//  Voter
//
//  Created by Aiden on 28/02/2021.
//

import UIKit
import CoreData

var selfVoter: Voter?

class LoginViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    
    var voters = [Voter]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        voters = try! Voter.loadVoters()

    }
    
    @IBAction func didLogin(_ sender: Any) {
        print("Hello")
        if let name = nameTextField.text, let id = idTextField.text {
            let verified = voters.contains { (voter) -> Bool in
                return voter.name == name && voter.id == id
            }
            
            if verified {
                performSegue(withIdentifier: K.Segues.didLogin, sender: self)
            } else {
                print("Not verified.")
            }
        }
    }
    
    
    
    
    // Put prepare data here !!!

    
//    func saveVoter() {
//        do {
//            try self.context.save()
//        } catch {
//            print("Error saving context \(error)")
//        }
//
//        self.tableView.reloadData()
//    }
    
    

}
