//
//  VerbViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class VerbViewController: UIViewController {

    @IBOutlet weak var verbTextField: UITextField!
    
    var sentenceArray = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getVerbs(){
        
        if verbTextField.text! != ""{
            
            let verb = verbTextField.text!
            sentenceArray[sentenceArray.firstIndex(of: "verbPlaceholder")!] = verb
            
        } else{
            
            return //replace return with alert
            
        }
        
        }
    
    @IBAction func verbSubmitPressed(_ sender: UIButton) {
        
        getVerbs()
        if sentenceArray.firstIndex(of: "verbPlaceholder") != nil{
            verbTextField.text = ""
        } else{
            performSegue(withIdentifier: "toAdjSegue", sender: nil)
        }
        
    }
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
        let adjSegue = segue.destination as! AdjViewController
        adjSegue.sentenceArray = sentenceArray
        
     }
    
    
}
