//
//  DetailEditExperienceView.swift
//  AppliCV (iOS)
//
//  Created by stage on 23/02/2023.
//

import SwiftUI

struct DetailEditExperienceView: View {
    @Binding var experience: Experiences
    var body: some View {
        Form{
            Section(header: Text("Info Experiences")){
                    ThemePicker(selection: $experience.theme)
                    TextField("Titre", text: $experience.title)
                    TextField("Description", text: $experience.desc)
            }
        }
    }
}

struct DetailEditExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditExperienceView(experience: .constant(Experiences.sampleData[0]))
    }
}
