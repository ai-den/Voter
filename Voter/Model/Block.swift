//
//  Block.swift
//  Voter
//
//  Created by Aiden on 15/02/2021.
//

import Foundation
import CryptoKit


struct Block {
    var voter: String
    var candidate: String
    var timeStamp: String
    var prevBlock: String
    var hash: String
//    {
//        let stringValue = "\(voter.name) \(candidate.name) \(time) \(prevBlock)"
//        let data = Data(stringValue.utf8)
//        return SHA256.hash(data: data).description
//    }
}
