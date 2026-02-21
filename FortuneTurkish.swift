// FortuneTurkish.swift

import Foundation

struct Fortune {
    let text: String
}

class FortuneDatabase {
    private var fortunes: [Fortune] = []
    
    init() {
        loadFortunes()
    }
    
    private func loadFortunes() {
        fortunes.append(Fortune(text: "Bugün sizin için şanslı bir gün!"))
        fortunes.append(Fortune(text: "Yeni bir başlangıç yapmak için doğru zaman."))
        fortunes.append(Fortune(text: "İş hayatınızda sürprizler sizi bekliyor."))
        fortunes.append(Fortune(text: "Geçmişteki hatalarınızı affedin ve ileriye bakın."))
        fortunes.append(Fortune(text: "Aşk hayatınızda olumlu gelişmeler olacak."))
        fortunes.append(Fortune(text: "Kendinize güvenin, her şey yoluna girecek."))
        fortunes.append(Fortune(text: "Bugün bir arkadaşınızdan destek alabilirsiniz."))
        fortunes.append(Fortune(text: "Yeni bir fırsat karşınıza çıkacak."))
        fortunes.append(Fortune(text: "Sevdiklerinizle güzel zaman geçireceksiniz."))
        fortunes.append(Fortune(text: "Yardımseverliğiniz takdir edilecek."))
    }
    
    func getRandomFortune() -> Fortune {
        return fortunes.randomElement() ?? Fortune(text: "Şansınız her zaman yaver gitsin!")
    }
}