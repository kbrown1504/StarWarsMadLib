//
//  NounViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class NounViewController: UIViewController {

    @IBOutlet weak var nounTextField: UITextField!
    
    var sentenceArray = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getNouns() {
        if nounTextField.text! != ""{
            
            let noun = nounTextField.text!
            sentenceArray[sentenceArray.firstIndex(of: "nounPlaceholder")!] = noun
            
        } else{
            
            return //replace return with alert
            
        }
    }
    
    @IBAction func nounSubmitPressed(_ sender: UIButton) {
        getNouns()
        if sentenceArray.firstIndex(of: "nounPlaceholder") != nil{
            nounTextField.text = ""
        } else{
            performSegue(withIdentifier: "toVerbSegue", sender: nil)
        }
    }
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
        let verbSegue = segue.destination as! VerbViewController
        verbSegue.sentenceArray = sentenceArray
        
     }
    
    
}
