//
//  ViewController.swift
//  cats_age
//
//  Created by Dorian Loewe on 19.10.2016.
//  Copyright © 2016 Dorian Loewe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var catAgeTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    @IBAction func getAge(_ sender: AnyObject) {
        
        catAgeTextField.endEditing(true)
        
        if (catAgeTextField.text?.isEmpty)!{
            resultLabel.text = "Ale proszę coś wpisać!"
        }
        else{
            var catAge = Int(catAgeTextField.text!)!
        
            resultLabel.text = "W krainie kotów byłby w wieku \(catAge*7) lat!"
        
            if (catAge == 0){
                resultLabel.text = "Zero? Czyli nie masz kotka? ( ͡° ʖ̯ ͡°)"
            }
            else if (catAge >= 30)
            {
                resultLabel.text = "Kotki chyba tyle nie żyją ( ͡° ʖ̯ ͡°)..."
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

