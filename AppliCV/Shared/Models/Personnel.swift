//
//  Personnel.swift
//  AppliCV (iOS)
//
//  Created by stage on 21/02/2023.
//

import Foundation
import SwiftUI

struct Personnel{
    var nom: String
    var prenom: String
    var age: Int
    var dateNaissance: String
    var Permis: [ThemePermis]
    var Diplome: [String]
    
    init(nom: String, prenom: String, age: Int, dateNaissance: String, Permis: [ThemePermis], Diplome: [String]){
        self.nom = nom
        self.prenom = prenom
        self.age = age
        self.dateNaissance = dateNaissance
        self.Permis = Permis
        self.Diplome = Diplome
    }
}



extension Personnel{
    static let sampleData: [Personnel] = [
        Personnel(nom: "Marques", prenom: "Vivian", age: 22, dateNaissance: "27-05-2000", Permis: [ThemePermis.Voiture], Diplome: ["Bac", "Bts SIO"])
    ]
}
