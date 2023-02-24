//
//  Theme.swift
//  AppliCV (iOS)
//
//  Created by stage on 21/02/2023.
//

import Foundation
import SwiftUI

enum ThemeCompetence: String, CaseIterable, Identifiable{
    case Desktop
    case Mobil

    case IOS
    
    var id: String{
        name
    }
    
    
    var name: String{
        rawValue.capitalized
    }
    
}

enum ThemeExperience: String, CaseIterable, Identifiable{

    
    case Réseau
    case Dev
    case Autre
    
    var id: String{
        name
    }
    
    
    var name: String{
        rawValue.capitalized
    }
    
}



enum ThemePermis: String{
    case Voiture
    case Moto
}

