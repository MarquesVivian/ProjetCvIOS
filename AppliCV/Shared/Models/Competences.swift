//
//  Competences.swift
//  AppliCV (iOS)
//
//  Created by stage on 21/02/2023.
//

import Foundation
import SwiftUI

struct Competences: Identifiable{
    let id: UUID
    
    var title: String
    var desc: String
    var theme: ThemeCompetence
    
    init(id:UUID = UUID(), title: String, desc: String, theme: ThemeCompetence){
        self.id = id
        self.title = title
        self.desc = desc
        self.theme = theme
        
    }
}

extension Competences{
    static let sampleData: [Competences] = [
        Competences(title: "IOS", desc:"je n'aime pas vraiment IOS mais pas le choix",theme: .Mobil),
        Competences(title: "C", desc:"Trop ancien je n'utilise plus",theme: .Desktop),
        Competences(title: "C++", desc:"C'est rigolo",theme: .Desktop)
    ]
}
