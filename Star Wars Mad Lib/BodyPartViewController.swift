//
//  BodyPartViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class BodyPartViewController: UIViewController {
    
    @IBOutlet weak var bodyPartTextField: UITextField!
    var sentenceArray = [""]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
    }
    
    func getBodyPart(){
        
        if bodyPartTextField.text! != ""{
            
            let bodyPart = bodyPartTextField.text!
            sentenceArray[sentenceArray.firstIndex(of: "bodyPartPlaceholder")!] = bodyPart
            
        } else{
            
            return //replace return with alert
            
        }
        
    }
    
    @IBAction func onBodyPartSubmitPressed(_ sender: Any) {
        getBodyPart()
        if sentenceArray.firstIndex(of: "bodyPartPlaceholder") != nil{
            bodyPartTextField.text = ""
        } else{
            performSegue(withIdentifier: "toFinalDisplaySegue", sender: nil)
        }
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let finalDisplay = segue.destination as! FinalDisplayViewController
        finalDisplay.sentenceArray = sentenceArray
    }
    

}
