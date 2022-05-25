//
//  ContentView.swift
//  Shared
//
//  Created by Herie Marie A. Estaño on 5/24/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ClassicaModel

    var body: some View {
        
        NavigationView {
            
            VStack {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(model.details, id: \.self) { index in
                            SongCard(title: index.title, composer: index.composer, image: index.image, type: index.type)
                                    .padding(.all, 30)
                        }//: FOREACH
                    }//: HSTACK
                    .padding(.all, 20)
                }//: SCROLLVIEW
                
                HStack {
                    Button(action: { model.playMusic() }) {
                        Image(systemName: "play.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray3))
                    }
                    
                    Button(action: { model.pauseMusic() }) {
                        Image(systemName: "pause.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray3))
                    }
                    
                    Button(action: { model.stopMusic() }) {
                        Image(systemName: "stop.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray3))
                    }
                }
            }
            .navigationBarTitle(Text("Classica"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
