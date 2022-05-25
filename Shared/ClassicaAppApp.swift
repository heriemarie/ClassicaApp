//
//  ClassicaAppApp.swift
//  Shared
//
//  Created by Herie Marie A. Estaño on 5/24/22.
//

import SwiftUI

@main
struct ClassicaAppApp: App {
    
    @StateObject var model: ClassicaModel = ClassicaModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
                .onAppear {
                    UIApplication.shared.isIdleTimerDisabled = true
                }
                .onDisappear {
                    UIApplication.shared.isIdleTimerDisabled = false
                }
        }
    }
}
