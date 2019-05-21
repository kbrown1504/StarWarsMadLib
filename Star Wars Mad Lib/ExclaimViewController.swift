//
//  ExclaimViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class ExclaimViewController: UIViewController {
    
    @IBOutlet weak var exclaimTextField: UITextField!
    var sentenceArray = [""]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getExclaim(){
        
        if exclaimTextField.text! != ""{
            
            let exclaim = exclaimTextField.text!
            sentenceArray[sentenceArray.firstIndex(of: "exclaimPlaceholder")!] = exclaim
            
        } else{
            
            return //replace return with alert
            
        }
        
    }
    
    @IBAction func onExclaimSubmitPressed(_ sender: Any) {
        getExclaim()
        if sentenceArray.firstIndex(of: "exclaimPlaceholder") != nil{
            exclaimTextField.text = ""
        } else{
            performSegue(withIdentifier: "toBodyPartSegue", sender: nil)
        }
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let bodySegue = segue.destination as! BodyPartViewController
        bodySegue.sentenceArray = sentenceArray
    }
 

}
