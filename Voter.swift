import Foundation

struct Voter: Decodable {
	var name: String
	var age: Int
	var id: String
    
    
    
    static func loadVoters() throws -> [Voter] {
        let decoder = JSONDecoder();
        let url = Bundle.main.url(forResource: "voters", withExtension: "json")
        let voters = try decoder.decode(
            [Voter].self,
            from: Data(contentsOf: url!)
        )
        return voters;
    }
}


