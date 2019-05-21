//
//  AdverbViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class AdverbViewController: UIViewController {
    
    @IBOutlet weak var adverbTextField: UITextField!
    var sentenceArray = [""]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func getAdverbs(){
        
        if adverbTextField.text! != ""{
            
            let adverb = adverbTextField.text!
            sentenceArray[sentenceArray.firstIndex(of: "adverbPlaceholder")!] = adverb
            
        } else{
            
            return //replace return with alert
            
        }
        
    }

    
    
    @IBAction func onAdverbSubmitPressed(_ sender: UIButton) {
        getAdverbs()
        if sentenceArray.firstIndex(of: "adverbPlaceholder") != nil{
            adverbTextField.text = ""
        } else{
            performSegue(withIdentifier: "toVerbIngSegue", sender: nil)
        }
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let verbIngSegue = segue.destination as! VerbIngViewController
        verbIngSegue.sentenceArray = sentenceArray
        
    }
 

}
