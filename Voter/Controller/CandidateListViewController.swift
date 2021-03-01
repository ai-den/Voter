//
//  CandidatesViewController.swift
//  Voter
//
//  Created by Aiden on 21/02/2021.
//

import UIKit
import CoreData

class CandidateListViewController: UIViewController {
    
    
    
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Methods
        
        // Delegate Assigning
        tableView.delegate = self
     
        
        

        
        tableView.register(UINib(nibName: "CandidateTableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        
        
    }
    
    // ======================================
    // MARK: View configs
    // ======================================
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    
    
    // ======================================
    // MARK: Core Data
    // ======================================

    
    
  
    
    

}

// MARK: TableView DataSource
//extension CandidateListViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return
//    }
//
//
//
//
//
//}



// MARK: TableView Delegate
extension CandidateListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: K.Segues.toCandidateDetail, sender: self)
    
    }
    
    
    
}





