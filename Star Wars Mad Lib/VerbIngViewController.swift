//
//  VerbIngViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class VerbIngViewController: UIViewController {
    
    var sentenceArray = [""]
    @IBOutlet weak var verbIngTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getVerbsIng(){
        
        if verbIngTextField.text! != ""{
            
            let verbIng = verbIngTextField.text!
            sentenceArray[sentenceArray.firstIndex(of: "verbIngPlaceholder")!] = verbIng
            
        } else{
            
            return //replace return with alert
            
        }
        
    }

    @IBAction func onVerbIngSubmitPressed(_ sender: UIButton) {
        getVerbsIng()
        if sentenceArray.firstIndex(of: "verbIngPlaceholder") != nil{
            verbIngTextField.text = ""
        } else{
            performSegue(withIdentifier: "toObjectSegue", sender: nil)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let objectSegue = segue.destination as! ObjectViewController
        objectSegue.sentenceArray = sentenceArray
        
    }
 

}
