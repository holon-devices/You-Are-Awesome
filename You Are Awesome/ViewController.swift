//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Henry Li on 1/31/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    var totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        var messages = ["You are Awesome!", "You are great!", "You are fantastic", "Fabulous? That's you", "When the genius bar needs help they call you", "You got the design skills of Johnny Ive"]
        
//        messageLabel.text = messages[messageNumber]
//        messageNumber += 1
//        if messageNumber == messages.count {
//            messageNumber = 0
//        }
        messageLabel.text = messages[Int.random(in: 0 ... messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
//        print(imageNumber)
//        //let imageName = "image" + String(imageNumber)
//        let imageName = "image\(imageNumber)"
//
//        imageNumber = imageNumber + 1
//        if imageNumber == 10 {
//
//            imageNumber = 0
//        }
        
        
//        let awesomeMessage =  "You are awesome!"
//        let greatMessage = "You are great!"
//        let bombMessage = "You are da bomb!"
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//        } else if messageLabel.text == greatMessage {
//            messageLabel.text = bombMessage
//            imageView.image = UIImage(named: "image2")
//        } else {
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image0")
//
//
//        }
        
      
    }
    
}

