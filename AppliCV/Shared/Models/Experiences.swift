//
//  Experience.swift
//  AppliCV (iOS)
//
//  Created by stage on 21/02/2023.
//

import Foundation
import SwiftUI

struct Experiences: Identifiable{
    let id: UUID
    var title: String
    var desc: String
    var theme: ThemeExperience
    
    init(id:UUID = UUID(), title: String, desc: String, theme: ThemeExperience){
        self.id = id
        self.title = title
        self.desc = desc
        self.theme = theme
        
    }
    
    struct Data{
        var title: String = ""
        var desc: String = ""
        var theme: ThemeExperience = .Réseau
    }
    
    var data: Data{
        Data(title: title, desc: desc, theme: theme)
    }
    
    mutating func update(from data: Data){
        title = data.title
        desc = data.desc
        theme = data.theme
    }
}

extension Experiences{
    static let sampleData: [Experiences] = [
        Experiences(title: "Stage Hopital", desc:"Stage Hopital service informatique", theme: .Réseau),
        Experiences(title: "TSA", desc:"Alternance en tant que dev", theme: .Dev),
        Experiences(title: "Paysans", desc:"J'ai travailler dans les champs", theme: .Autre)
    ]
}
