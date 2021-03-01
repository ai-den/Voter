//
//  Blockchain.swift
//  Voter
//
//  Created by Aiden on 17/02/2021.
//

import Foundation


//struct Blockchain {
//    var blocks = [Block]()
//    var voters = [Voter]()
//    var candidates = [Candidate]()
//    
//    init() {
//        if blocks.isEmpty {
//            let v = Voter(name: "-", id: "-", age: 0)
//            let c = Candidate(name: "-", representativeOf: .Red, township: "-")
//            let b = Block(voter: v, candidate: c, time: "-", prevBlock: "0000")
//            blocks.append(b)
//        } else {
//            print("Blockchain contains \(blocks.capacity) blocks")
//        }
//    }
//    
//    
//    mutating func addBlock(block: Block) -> Bool {
//        blocks.append(block)
//        return true
//    }
//    
//    func checkDouble(for voter: Voter) -> Bool {
//        
//        if !voters.contains(voter) {
//            return false
//        }
//        
//        for block in blocks {
//            if voter == block.voter {
//                print("Double voting detected while adding block.")
//                return false
//            }
//        }
//        return true
//    }
//    
//    func isValidCandidate(for candidate: Candidate) -> Bool {
//        
//        if !candidates.contains(candidate) {
//            return false
//        }
//        
//        for c in candidates {
//            if candidate == c {
//                return true
//            }
//        }
//        
//        return false
//    }
//    
//    mutating func addNewVoter(voter: Voter) -> Bool {
//        for v in voters {
//            if v == voter {
//                return false
//            }
//        }
//        
//        voters.append(voter)
//        return true
//    }
//    
//    
//    mutating func addNewCandidate(candidate: Candidate) -> Bool {
//        for c in candidates {
//            if c == candidate {
//                return false
//            }
//        }
//        
//        candidates.append(candidate)
//        return true
//    }
//    
//    func getLastVoteHash() -> String {
//        return blocks.last!.hash
//    }
//}
