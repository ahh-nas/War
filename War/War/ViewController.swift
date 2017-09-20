//
//  ViewController.swift
//  War
//
//  Created by The Dreadnought on 9/16/17.
//  Copyright © 2017 edu.self. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
   
 
    
    let cardNames = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealtapped(sender: UIButton) {
        //randomize left number from 0-12
        let leftNumber = Int (arc4random_uniform(13))
        
        //set the left image
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        //randomize the right number from 0-12
        let rightNumber = Int (arc4random_uniform(13))
        
        //set the right image
        rightImageView.image=UIImage(named: cardNames[rightNumber])
        
        //compare the card numbers
        if leftNumber > rightNumber {
            leftScore+=1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber==rightNumber{
            
        }
        else{
            rightScore+=1
            rightScoreLabel.text = String(rightScore)
        }
    }

}

