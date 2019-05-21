//
//  ObjectViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class ObjectViewController: UIViewController {
    
    @IBOutlet weak var objectTextField: UITextField!
    var sentenceArray = [""]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getObjects(){
        
        if objectTextField.text! != ""{
            
            let object = objectTextField.text!
            sentenceArray[sentenceArray.firstIndex(of: "objectPlaceholder")!] = object
            
        } else{
            
            return //replace return with alert
            
        }
        
    }

    
    @IBAction func onObjectSubmitPressed(_ sender: Any) {
        getObjects()
        if sentenceArray.firstIndex(of: "objectPlaceholder") != nil{
            objectTextField.text = ""
        } else{
            performSegue(withIdentifier: "toNumberSegue", sender: nil)
        }
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let numberSegue = segue.destination as! NumberViewController
        numberSegue.sentenceArray = sentenceArray
        
    }
    

}
