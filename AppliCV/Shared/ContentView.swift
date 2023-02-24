//
//  ContentView.swift
//  Shared
//
//  Created by stage on 20/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    let competences : [Competences] = Competences.sampleData
    let exepriences : [Experiences] = Experiences.sampleData
//    let personnel: Personnel = Personnel.sampleData
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack(){
                    NavigationLink(destination: Text("Test")){
                        Image("Moa")
                            .resizable()
                            .aspectRatio( contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                    }

                    Spacer()
                    
                        VStack(alignment: .leading){
                            Text("Marques")
                                .font(.title2)
                                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                            
                                
                            Text("Vivian")
                                .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                        }
                        .padding(.trailing, 40)
                }
                .padding()
            }
            Spacer()
                .frame(width: 300, height: 5)
                .background(.purple)
                .cornerRadius(10)
                
            
            HStack(alignment: .top){
                
                CompsView(competences: competences)
                    .padding()
                //Bar latérale
                Spacer()
                    .frame(width: 5, height: 500)
                    .background(.purple)
                
                
                ExeprienceView(experiences: exepriences)
                    .padding()
            }
            Spacer()
                .frame(width: 300, height: 5)
                .background(.purple)
                .cornerRadius(10)
            
            HStack{
                Text("test")
                    .font(.title)
                VStack{
                    Text("- test")
                        .font(.title)
                    Text("- test")
                        .font(.title)
                        
                    
                }
            }
            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
