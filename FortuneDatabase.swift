import Foundation

class FortuneDatabase {
    private let userDefaultsKey = "fortunes"
    
    // Save a fortune with the current date and time
    func saveFortune(_ fortune: String) {
        var fortunes = retrieveFortunes()
        let timestamp = getCurrentDateTime()
        let fortuneEntry = "\(timestamp): \(fortune)"
        fortunes.append(fortuneEntry)
        UserDefaults.standard.set(fortunes, forKey: userDefaultsKey)
    }
    
    // Retrieve all saved fortunes
    func retrieveFortunes() -> [String] {
        return UserDefaults.standard.stringArray(forKey: userDefaultsKey) ?? []
    }
    
    // Get the current date and time as a formatted string
    private func getCurrentDateTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
        return dateFormatter.string(from: Date())
    }
}