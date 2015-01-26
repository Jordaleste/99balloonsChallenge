//
//  ViewController.swift
//  99balloonsChallenge
//
//  Created by Charles Eison on 1/26/15.
//  Copyright (c) 2015 Charles Eison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    
    var balloonInstance: [Balloon] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.countLabel.text = ""
        self.myImageView.image = UIImage(named: "BerlinTVTower.jpg")
    
        self.balloonCreat()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
    
    
        
        let balloon = balloonInstance[currentIndex]
        
        if balloon.count == 1 {
            countLabel.text = "1 balloon"
            myImageView.image = balloon.image
            currentIndex += 1
        }
        else {
        countLabel.text = "\(balloon.count) balloons"
        myImageView.image = balloon.image
        
        currentIndex += 1
        }
    
    }
    
    func balloonCreat () {
        for var balloonCount = 0; balloonCount <= 99; balloonCount++ {
            var balloon = Balloon()
            balloon.count = balloonCount
            
            let randomNumber = Int(arc4random_uniform(UInt32(4)))
            
            switch randomNumber {
            case 1:
                balloon.image = UIImage(named: "RedBalloon1.jpg")
            case 2:
                balloon.image = UIImage(named: "RedBalloon2.jpg")
            case 3:
                balloon.image = UIImage(named: "RedBalloon3.jpg")
            default:
                balloon.image = UIImage(named: "RedBalloon4.jpg")
                
            }
            self.balloonInstance.append(balloon)
            
        }
    }
    
}

