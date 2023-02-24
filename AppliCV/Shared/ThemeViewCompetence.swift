//
//  ThemeViewCompetence.swift
//  AppliCV (iOS)
//
//  Created by stage on 23/02/2023.
//

import SwiftUI

struct ThemeViewCompetence: View {
    let theme: ThemeCompetence
    var body: some View {
        Text(theme.name)
    }
}

struct ThemeViewCompetence_Previews: PreviewProvider {
    static var previews: some View {
        ThemeViewCompetence(theme: ThemeCompetence.Desktop)
    }
}
