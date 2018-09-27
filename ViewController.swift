//
//  ViewController.swift
//  Dicee
//
//  Created by Ashwin Nishad on 9/27/18.
//  Copyright © 2018 Ashwin Nishad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6" ]	 // let is used to create constants
   
   var randomDiceIndex1: Int = 0
   var randomDiceIndex2: Int = 0
   
   @IBOutlet weak var diceImg1: UIImageView! //Interface builder outlet
   
   @IBOutlet weak var diceImg2: UIImageView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      updateDiceImages()
      // Do any additional setup after loading the view, typically from a nib.
   }

   @IBAction func rollBtnPressed(_ sender: UIButton) {
      updateDiceImages()
   }
   
   override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
      if motion == .motionShake {
         updateDiceImages()
      }
   }
   
   func updateDiceImages() {
      randomDiceIndex1 = Int.random(in: 0 ... 5)
      randomDiceIndex2 = Int.random(in: 0 ... 5)
      
      diceImg1.image = UIImage(named: diceArray[randomDiceIndex1])
      diceImg2.image = UIImage(named: diceArray[randomDiceIndex2])
   }
}

