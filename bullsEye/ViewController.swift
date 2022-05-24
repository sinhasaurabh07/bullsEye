//
//  ViewController.swift
//  bullsEye
//
//  Created by Saurabh Sinha on 24/05/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var mySlider: UISlider!
    @IBOutlet var hitButton: UIButton!
    @IBOutlet var refreshButton: UIButton!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var info: UIButton!
    @IBOutlet var roundLabel: UILabel!
    var random = Int.random(in: 1...100)
    var sliderValue : Int = 1
    var round = 1
    var finalScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.isHidden = true
        // Do any additional setup after loading the view.
        myLabel.text = "Try to hit as close as possible to: \(random)"
        self.view.backgroundColor = UIColor.cyan
        
        roundLabel.text = "Round: \(round)"
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        sliderValue = Int(mySlider.value)
        print(sliderValue)
    }
    
    @IBAction func hitMe(_ sender: UIButton) {
        var difference = 0;
        
        if random > sliderValue {
            difference = random - sliderValue
        }else {
            difference = sliderValue - random
        }
        print(difference)
        
        finalScore = 100 - difference
        
        print("finalScore: \(finalScore)")
    }
    
    @IBAction func newRound(_ sender: UIButton){
        scoreLabel.isHidden = true
        random = Int.random(in: 1...100)
        round = round + 1;
        roundLabel.text = "Round: \(round)"
        print("round \(round)")
    }
    
    @IBAction func information(_ sender: UIButton){
        scoreLabel.isHidden = false;
        scoreLabel.text = "Score : \(finalScore)"
        
    }

}

