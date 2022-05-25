//
//  ScaleButtonStyle.swift
//  ClassicaApp
//
//  Created by Herie Marie A. Estaño on 5/24/22.
//

import SwiftUI

//ButtonStyle is a protocol

struct ScaleButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.97 : 1.00 )
    }
    
    
}
