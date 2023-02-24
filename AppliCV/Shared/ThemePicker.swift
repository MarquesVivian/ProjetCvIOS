//
//  ThemePicker.swift
//  AppliCV (iOS)
//
//  Created by stage on 23/02/2023.
//

import SwiftUI

struct ThemePicker: View {
    
    @Binding var selection: ThemeExperience
    
    var body: some View {
        Picker("Theme", selection: $selection){
            ForEach(ThemeExperience.allCases){theme in
                ThemeView(theme: theme).tag(theme)
            }
        }
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.Réseau))
    }
}
