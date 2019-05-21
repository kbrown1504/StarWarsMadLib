//
//  FinalDisplayViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class FinalDisplayViewController: UIViewController {
    
    @IBOutlet weak var finalTextView: UITextView!
    var sentenceArray = [""]
    var finalString = ""
    var modStringArray: [NSAttributedString] = []
    var formattedSentenceString = NSAttributedString(string: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createModArray(array: sentenceArray)
        
        for item in modStringArray{
            
            formattedSentenceString = concatenate(left: formattedSentenceString, right: item)
            
        }
        
        finalTextView.attributedText = formattedSentenceString

//        for item in sentenceArray{
//            finalString.append(item)
//        }
//
//        finalTextView.text = finalString
        
    }
    
    func createModArray(array: [String]){
        
        let specialAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 20)]
        let deafaultAttributes = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20)]
        
        for item in array{
            if (array.firstIndex(of: item)! % 2 != 0){
                let toAdd = NSAttributedString(string: item, attributes: specialAttributes)
                modStringArray.append(toAdd)
            } else{
                let toAdd = NSAttributedString(string: item, attributes: deafaultAttributes)
                modStringArray.append(toAdd)
            }
        }
    }
    
    func concatenate (left: NSAttributedString, right: NSAttributedString) -> NSAttributedString
    {
        let result = NSMutableAttributedString()
        result.append(left)
        result.append(right)
        return result
    }
    
    @IBAction func onStartOverButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToStart", sender: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
