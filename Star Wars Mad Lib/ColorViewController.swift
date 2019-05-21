//
//  ColorViewController.swift
//  Star Wars Mad Lib
//
//  Created by Keegan Brown on 5/16/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    @IBOutlet weak var colorTextField: UITextField!
    var sentenceArray = [""]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getColors(){
        
        if colorTextField.text! != ""{
            
            let color = colorTextField.text!
            sentenceArray[sentenceArray.firstIndex(of: "colorPlaceholder")!] = color
            
        } else{
            
            return //replace return with alert
            
        }
        
    }
    
    @IBAction func onColorSubmitPressed(_ sender: UIButton) {
        getColors()
        if sentenceArray.firstIndex(of: "colorPlaceholder") != nil{
            colorTextField.text = ""
        } else{
            performSegue(withIdentifier: "toExclaimSegue", sender: nil)
        }
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let exclaimSegue = segue.destination as! ExclaimViewController
        exclaimSegue.sentenceArray = sentenceArray
    }
 

}
