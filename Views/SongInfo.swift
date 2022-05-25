//
//  SongInfo.swift
//  ClassicaApp
//
//  Created by Herie Marie A. Estaño on 5/24/22.
//

import SwiftUI

struct SongInfo: View {
    
    let title: String
    let composer: String
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text(title)
                    .font(.headline)
                    .foregroundColor(Color(.white))
                Spacer()
            }
           
            HStack {
                Text(composer)
                    .font(.caption)
                    .foregroundColor(Color(.white))
                Spacer()
            }
        }
        .shadow(radius: 1)
        .padding(.all, 20)
    }
}

struct SongInfo_Previews: PreviewProvider {
    static var previews: some View {
        SongInfo(title: "", composer: "")
    }
}
