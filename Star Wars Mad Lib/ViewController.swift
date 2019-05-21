//
//  ViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //nouns : 1 √
    //adj: 2 √
    //verbs : 2 √
    //verbsIng : 1 √
    //adverbs : 1 √
    //exclaim : 1
    //body part : 1
    //nonsense 1 √
    //number : 2 √
    //color : 1 √
    //object : 1 √
    
    
    //*******************OVERALL NOTES*******************
    //Should probably optimize code as a who and make a basic get function for all words instead of an individial one for each type.
    //Could add more images ect. to make it more apealling
    //Should add alerts to make invalid entry cases more visible to the user
    //Could change the color of each word that is added if there is time
    
    
    var sentenceArray = ["It was time to fly! Chewbacca, a Wookie Warrior, was the copilot for the famous ", "nounPlaceholder",", the Millenium Falcon. It could fly through space at warp speeds of ", "numberPlaceholder", " miles per minute. At those ", "adjPlaceholder", " speeds, it is smart to wear a/an ", "objectPlaceholder", " to keep you strapped into your chair. Especially in battle like today! Chewie and Han are ", "verbIngPlaceholder", " to escape a Star Destroyer that is hot on their tail. The Destroyer launches a/an ", "nounPlaceholder", " at them, but it ", "adverbPlaceholder", " misses them by ", "numberPlaceholder" , " inches! Chewbacca pushes the ", "colorPlaceholder", " button on the control panel that says \"", "nonsensePlaceholder" , ".\" The spacecraft suddenly ", "verbPlaceholder", " to the left and ", "verbPlaceholder", " to the right before it launches into hyperspace. Han Solo and Chewbacca are safe! They clap their ", "bodyPartPlaceholder", " and shout, \"", "exclaimPlaceholder" , "!\"" ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toNounSegue", sender: nil)
        
    }
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
        
        let nounSegue = segue.destination as! NounViewController
        nounSegue.sentenceArray = sentenceArray
        
     }
    
    @IBAction func unwindToStart(segue: UIStoryboardSegue){
        
    }
    
    
    
}

