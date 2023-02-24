//
//  ThemeView.swift
//  AppliCV (iOS)
//
//  Created by stage on 23/02/2023.
//

import SwiftUI

struct ThemeView: View {
    let theme: ThemeExperience
    var body: some View {
        Text(theme.name)
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: ThemeExperience.Réseau)
    }
}
