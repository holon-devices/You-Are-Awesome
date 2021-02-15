//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Henry Li on 1/31/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    var totalNumberOfImages = 9
    var audioPlayer: AVAudioPlayer!
    let totalNumberOfSounds = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func playSound(name: String) {
    if let sound = NSDataAsset(name: name) {
        
        do {
            try audioPlayer = AVAudioPlayer(data: sound.data)
            audioPlayer.play()

        } catch {
            print(" Error:  \(error.localizedDescription) Could not initialize AudioPlayer object.")
    }
        
    
    } else {
        print(" Error: Could not read data from file sound0")
    }
    

  
}


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        var messages = ["You are Awesome!", "You are great!", "You are fantastic", "Fabulous? That's you", "When the genius bar needs help they call you", "You got the design skills of Johnny Ive"]
        
        
        func nonRepeatingRandom(originalNumber: Int, upperBound: Int) -> Int {
            var newNumber: Int
            repeat {
                newNumber = Int.random(in: 0 ... messages.count-1)
            } while originalNumber == newNumber
                return newNumber
        }
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBound: messages.count-1)
        messageLabel.text = messages[messageNumber]

        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBound: totalNumberOfSounds-1)
    
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBound: totalNumberOfImages-1)
        
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        
        
        if playSoundSwitch.isOn {
            playSound(name: "sound\(soundNumber)")
        }
        
        
    
    }
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
       
        if !sender.isOn {
            if audioPlayer != nil {
            
                audioPlayer.stop()
            
        }
    }
    


    
    }
    
}

