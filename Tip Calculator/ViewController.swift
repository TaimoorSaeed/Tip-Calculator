    //
    //  ViewController.swift
    //  Tip Calculator
    //
    //  Created by Nano Degree on 28/01/2017.
    //  Copyright © 2017 Swift Pakistan. All rights reserved.
    //

    import UIKit

    class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var txtFeildValue: UITextField!

        @IBOutlet weak var slider: UISlider!
        
        @IBOutlet weak var sliderlabel: UILabel!
        
        
        @IBOutlet weak var TipLabel: UILabel!
        
        @IBOutlet weak var txtFeildLabel: UITextField!
        
       // MARK: NOTICE
        
    override func viewDidLoad() {
    super.viewDidLoad()

        TipLabel.text = "0"
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

    view.addGestureRecognizer(tap)
    }
        
        
        @IBAction func sliderValueChanged(_ sender: UISlider) {
            var currentValue = Int(sender.value)
            
            TipLabel.text = String(currentValue)
            
            sliderlabel.text = "Tip(" + String(currentValue) + "%)"
        }

    func dismissKeyboard() {
    view.endEditing(true)
    }
        

    }

