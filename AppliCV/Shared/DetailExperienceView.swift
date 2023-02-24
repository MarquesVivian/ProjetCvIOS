//
//  DetailExperienceView.swift
//  AppliCV (iOS)
//
//  Created by stage on 21/02/2023.
//

import SwiftUI

struct DetailExperienceView: View {
    @State var experience: Experiences
    @State private var isPresentingEditView = false
    var body: some View {
        List{
            Section(header: Text("Detail Expérience : \(experience.title)")){
                HStack(){
                    Text("Thème :")
                    Text(experience.theme.rawValue)
                }
                
                VStack(alignment: .leading){
                    Text("Description : ")
                    Spacer()
                    Text(experience.desc)
                } 
            }
        }   .navigationTitle(experience.theme.rawValue)
            .toolbar {
                Button("Modifier"){
                    isPresentingEditView = true
                }
        }
            .sheet(isPresented: $isPresentingEditView){
            NavigationView {
                DetailEditExperienceView(experience: $experience)
                    .navigationTitle(experience.title)
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

struct DetailExperienceView_Previews: PreviewProvider {
    static var exp = Experiences.sampleData[0]
    static var previews: some View {
        DetailExperienceView(experience: exp)
    }
}
