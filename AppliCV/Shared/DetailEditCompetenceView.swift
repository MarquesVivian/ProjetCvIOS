//
//  DetailEditCompetenceView.swift
//  AppliCV (iOS)
//
//  Created by stage on 23/02/2023.
//

import SwiftUI

struct DetailEditCompetenceView: View {
    @Binding var competence: Competences
    var body: some View {
        Form{
            Section(header: Text("Info Competence")){
                ThemePickerCompetence(selection: $competence.theme)
                TextField("Titre", text: $competence.title)
                TextField("Description", text: $competence.desc)
            }
        }
    }
}

struct DetailEditCompetenceView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditCompetenceView(competence: .constant(Competences.sampleData[0]))
    }
}
