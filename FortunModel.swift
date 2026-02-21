import Foundation

// Define the structure for a Fortune
struct Fortune {
    let id: Int
    let text: String
}

// Storage logic for fortunes
class FortuneStorage {
    private var fortunes: [Fortune] = []
    
    func addFortune(_ fortune: Fortune) {
        fortunes.append(fortune)
    }
    
    func getFortunes() -> [Fortune] {
        return fortunes
    }
}

// Logic for daily fortune generation
class DailyFortuneGenerator {
    private let storage: FortuneStorage
    
    init(storage: FortuneStorage) {
        self.storage = storage
    }
    
    func generateDailyFortune() -> Fortune? {
        guard !storage.getFortunes().isEmpty else { return nil }
        let randomIndex = Int.random(in: 0..<storage.getFortunes().count)
        return storage.getFortunes()[randomIndex]
    }
}