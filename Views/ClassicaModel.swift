//
//  Classica.swift
//  ClassicaApp
//
//  Created by Herie Marie A. Estaño on 5/24/22.
//

import SwiftUI
import AVKit

class ClassicaModel: ObservableObject {
    
    
   // var number = [0,1,2,3]
    
    @Published var details = [
        ClassicaInfoModel(
            title: "Waltz of the Flowers",
            composer: "Tchaikovsky",
            image: "childhood",
            type: "mp3"
        ),
        
        ClassicaInfoModel(
            title: "1812 Overture",
            composer: "Tchaikovsky",
            image: "manhood",
            type: "mp3"
        ),
        
        ClassicaInfoModel(
            title: "Ride of the Valkyries",
            composer: "Richard Wagner",
            image: "oldage",
            type: "mp3"
        ),
                   
        ClassicaInfoModel(
            title: "9th Symphony (Finale)",
            composer: "Ludwig van Beethoven",
            image: "youth",
            type: "mp3"
        )
    ] //.shuffled()
    
    
    var audioPlayer: AVAudioPlayer?
    
//
//    func generateRandomNumber() -> Int {
//        return number.randomElement()!
//
//    }
//
    
    func loadMusic(name: String, type: String) {
        
        if let filePath = Bundle.main.path(forResource: name , ofType: type) {
            let fileURL = URL(fileURLWithPath: filePath) //grabs the path and turn it into a url link
            
            do {
                audioPlayer = try AVAudioPlayer.init(contentsOf: fileURL)
            } catch {
                print("Error: file not found")
            }
        }
    }
    
    func loadAndPlay(song: String, type: String) {
        loadMusic(name: song, type: type)
        playMusic()
    }
    
    func playMusic() {
        audioPlayer?.play()
    }
    
    func pauseMusic() {
        audioPlayer?.pause()
    }
    
    func stopMusic() {
        audioPlayer?.stop()
        audioPlayer = nil
    }
    
}
