//
//  NonsenseViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class NonsenseViewController: UIViewController {
    
    @IBOutlet weak var nonsenseTextField: UITextField!
    var sentenceArray = [""]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getNonsense(){
        
        if nonsenseTextField.text! != ""{
            
            let nonsense = nonsenseTextField.text!
            sentenceArray[sentenceArray.firstIndex(of: "nonsensePlaceholder")!] = nonsense
            
        } else{
            
            return //replace return with alert
            
        }
        
    }
    
    @IBAction func onNonsenseSubmitPressed(_ sender: UIButton) {
        getNonsense()
        if sentenceArray.firstIndex(of: "nonsensePlaceholder") != nil{
            nonsenseTextField.text = ""
        } else{
            performSegue(withIdentifier: "toColorSegue", sender: nil)
        }
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let colorSegue = segue.destination as! ColorViewController
        colorSegue.sentenceArray = sentenceArray
    }
    

}
