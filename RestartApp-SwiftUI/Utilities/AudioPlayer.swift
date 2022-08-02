//
//  AudioPlayer.swift
//  RestartApp-SwiftUI
//
//  Created by Admin on 01/08/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch{
            print("Couldnot play the sound file")
        }
    }
}


