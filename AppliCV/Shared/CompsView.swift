//
//  CompsView.swift
//  AppliCV (iOS)
//
//  Created by stage on 21/02/2023.
//

import SwiftUI

struct CompsView: View {
    let competences: [Competences]
    var body: some View {
        VStack{
            Text("Compétence")
            List{
                ForEach(competences) { competence in
                    NavigationLink(destination: DetailCompetenceView(competence: competence)) {
                        Text("\(competence.title)")
                    }
                }
            }
        }
    }
}

struct CompsView_Previews: PreviewProvider {
    static var previews: some View {
        CompsView(competences: Competences.sampleData)
    }
}
