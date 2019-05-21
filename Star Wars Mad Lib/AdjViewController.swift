//
//  AdjViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class AdjViewController: UIViewController {
    
    @IBOutlet weak var adjTextField: UITextField!
    
    var sentenceArray = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func getAdjs(){
        
        if adjTextField.text! != ""{
            
            let adj = adjTextField.text!
            sentenceArray[sentenceArray.firstIndex(of: "adjPlaceholder")!] = adj
            
        } else{
            
            return //replace return with alert
            
        }
        
    }
    
    @IBAction func adjSubmitPressed(_ sender: Any) {
        
        getAdjs()
        if sentenceArray.firstIndex(of: "adjPlaceholder") != nil{
            adjTextField.text = ""
        } else{
            performSegue(withIdentifier: "toAdverbSegue", sender: nil)
        }
        
    }
    
    
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
        let adverbSegue = segue.destination as! AdverbViewController
        adverbSegue.sentenceArray = sentenceArray
        
     }
    
    
}
