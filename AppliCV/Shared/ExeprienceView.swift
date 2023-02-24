//
//  ExeprienceView.swift
//  AppliCV (iOS)
//
//  Created by stage on 21/02/2023.
//

import SwiftUI

struct ExeprienceView: View {
    let experiences: [Experiences]
    var body: some View {
        VStack{
            Text("Expérience")
            List{
                ForEach(experiences) { experience in
                    NavigationLink(destination: DetailExperienceView(experience: experience)){
                        Text("\(experience.title)")
                    }
                }
            }
            
        }
    }
}

struct ExeprienceView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        ExeprienceView(experiences: Experiences.sampleData)
    }
}
