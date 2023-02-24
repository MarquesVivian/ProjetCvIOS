//
//  ThemePickerCompetence.swift
//  AppliCV (iOS)
//
//  Created by stage on 23/02/2023.
//

import SwiftUI

struct ThemePickerCompetence: View {
    @Binding var selection: ThemeCompetence
    var body: some View {
        Picker("Theme", selection: $selection){
            ForEach(ThemeCompetence.allCases){theme in
                ThemeViewCompetence(theme: theme).tag(theme)
            }
        }
    }
}

struct ThemePickerCompetence_Previews: PreviewProvider {
    static var previews: some View {
        ThemePickerCompetence(selection: .constant(.Desktop))
    }
}
