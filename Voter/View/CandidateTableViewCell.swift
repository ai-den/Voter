//
//  CandidateTableViewCell.swift
//  Voter
//
//  Created by Aiden on 22/02/2021.
//

import UIKit

class CandidateTableViewCell: UITableViewCell {

    @IBOutlet weak var candidateName: UILabel!
    @IBOutlet weak var candidateParty: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
