//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var rollCount = 6
    
    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var centerLeft: UIView!
    @IBOutlet weak var centerRight: UIView!

    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var bottomLeft: UIView!
    @IBOutlet weak var bottomRight: UIView!
    @IBOutlet weak var center: UIView!
    
    @IBOutlet weak var firstDie: UILabel!
    @IBOutlet weak var secondDie: UILabel!
    @IBOutlet weak var thirdDie: UILabel!
    
    @IBOutlet weak var fourthDie: UILabel!
    @IBOutlet weak var fifthDie: UILabel!
    @IBOutlet weak var sixthDie: UILabel!
    
    func clearBoard(){
        topLeft.hidden = true
        topRight.hidden = true
        bottomLeft.hidden = true
        bottomRight.hidden = true
        centerLeft.hidden = true
        centerRight.hidden = true
        center.hidden = true
        firstDie.hidden = true
        secondDie.hidden = true
        thirdDie.hidden = true
        fourthDie.hidden = true
        fifthDie.hidden = true
        sixthDie.hidden = true
    }
    
    func oneRolled(){
        topLeft.hidden = true
        topRight.hidden = true
        bottomLeft.hidden = true
        bottomRight.hidden = true
        centerLeft.hidden = true
        centerRight.hidden = true
        center.hidden = false
    }
    
    func twoRolled(){
        topLeft.hidden = false
        topRight.hidden = true
        bottomLeft.hidden = true
        bottomRight.hidden = false
        centerLeft.hidden = true
        centerRight.hidden = true
        center.hidden = true
    }
    func threeRolled(){
        topLeft.hidden = true
        topRight.hidden = false
        bottomLeft.hidden = false
        bottomRight.hidden = true
        centerLeft.hidden = true
        centerRight.hidden = true
        center.hidden = false
    }
    func fourRolled(){
        topLeft.hidden = false
        topRight.hidden = false
        bottomLeft.hidden = false
        bottomRight.hidden = false
        centerLeft.hidden = true
        centerRight.hidden = true
        center.hidden = true

    }
    
    func fiveRolled(){
        topLeft.hidden = false
        topRight.hidden = false
        bottomLeft.hidden = false
        bottomRight.hidden = false
        centerLeft.hidden = true
        centerRight.hidden = true
        center.hidden = false
    }
    
    func sixRolled(){
        topLeft.hidden = false
        topRight.hidden = false
        bottomLeft.hidden = false
        bottomRight.hidden = false
        centerLeft.hidden = false
        centerRight.hidden = false
        center.hidden = true
    }
    
    @IBAction func rollTapped(sender: AnyObject) {
        if rollCount <= 5{
            rollCount += 1 }
        print(rollCount)
        
        if rollCount == 6 {
            clearBoard()
            rollCount = 0
        }
        
        let currentRoll = randomDiceRoll()
        
        switch rollCount {
        case 0:
            firstDie.text = String(currentRoll)
            firstDie.hidden = false
        case 1:
            secondDie.text = String(currentRoll)
            secondDie.hidden = false
        case 2:
            thirdDie.text = String(currentRoll)
            thirdDie.hidden = false
        case 3:
            fourthDie.text = String(currentRoll)
            fourthDie.hidden = false
        case 4:
            fifthDie.text = String(currentRoll)
            fifthDie.hidden = false
        case 5:
            sixthDie.text = String(currentRoll)
            sixthDie.hidden = false

        default:
            clearBoard()
        }
        

        
        switch currentRoll {
        case 1:
            oneRolled()
        case 2:
            twoRolled()
        case 3:
            threeRolled()
        case 4:
            fourRolled()
        case 5:
            fiveRolled()
        case 6:
            sixRolled()
        default:
            clearBoard()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        clearBoard()
        
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
}
