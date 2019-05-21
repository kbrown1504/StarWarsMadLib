//
//  NumberViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class NumberViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    var sentenceArray = [""]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getNumbers(){
        
        if numberTextField.text! != ""{
            
            let number = numberTextField.text!
            sentenceArray[sentenceArray.firstIndex(of: "numberPlaceholder")!] = number
            
        } else{
            
            return //replace return with alert
            
        }
        
    }

    
    @IBAction func onNumberSubmitPressed(_ sender: UIButton) {
        getNumbers()
        if sentenceArray.firstIndex(of: "numberPlaceholder") != nil{
            numberTextField.text = ""
        } else{
            performSegue(withIdentifier: "toNonsenseSegue", sender: nil)
        }
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let nonsenseSegue = segue.destination as! NonsenseViewController
        nonsenseSegue.sentenceArray = sentenceArray
        
    }
 

}
