//
//  SongCard.swift
//  ClassicaApp
//
//  Created by Herie Marie A. Estaño on 5/24/22.
//

import SwiftUI

struct SongCard: View {
    
    @EnvironmentObject var model: ClassicaModel 
    
    let title: String
    let composer: String
    let image: String
    let type: String
 
   
    
    var body: some View {
        
        Button(action: { model.loadAndPlay(song: title, type: type) } ) {
            ZStack {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                VStack {
                    HStack {
                        SongInfo(title: title, composer: composer)
                        Spacer()
                    }
                    Spacer()
                }
            }
            .frame(width: 300, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .buttonStyle(ScaleButtonStyle())
    }
}

struct SongCard_Previews: PreviewProvider {
    static var previews: some View {
        SongCard(title: "Waltz of the Flowers", composer: "Tchaikovsky", image: "childhood", type: "mp3")
    }
}
