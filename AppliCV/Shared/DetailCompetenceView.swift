//
//  DetailCompetenceView.swift
//  AppliCV (iOS)
//
//  Created by stage on 21/02/2023.
//

import SwiftUI

struct DetailCompetenceView: View {
    @State private var isPresentingEditView = false
    @State var competence: Competences
    var body: some View {
        List{
            Section(header: Text("Detail Compétence : \(competence.title)")){
                
                HStack(){
                    Text("Thème :")
                    Text(competence.theme.rawValue)
                }
                
                VStack(alignment: .leading){
                    Text("Description : ")
                    Spacer()
                    Text(competence.desc)
                }
            }
        }.navigationTitle(competence.theme.rawValue)
            .toolbar {
                Button("Modifier"){
                    isPresentingEditView = true
                }
    }            .sheet(isPresented: $isPresentingEditView){
        NavigationView {
            DetailEditCompetenceView(competence: $competence)
                .navigationTitle(competence.title)
                .toolbar{
                    ToolbarItem(placement: .cancellationAction){
                        Button("Annuler"){
                            isPresentingEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction){
                        Button("Valider"){
                            isPresentingEditView = false
                        }
                    }
                }
        }
}
}
}
struct DetailCompetenceView_Previews: PreviewProvider {
    static var comp = Competences.sampleData[0]
    static var previews: some View {
        DetailCompetenceView(competence: comp)
    }
}
