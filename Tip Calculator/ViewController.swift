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
        
        @IBOutlet weak var TotalLabel: UILabel!
        
       // MARK: NOTICE
        
    override func viewDidLoad() {
    super.viewDidLoad()

        TipLabel.text = "0"
        txtFeildValue.text = ""
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

    view.addGestureRecognizer(tap)
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        if(txtFeildValue.text != "")
        {
            var currentValue = Int(sender.value)
            
            var feildValue = Int(txtFeildValue.text!)
        
            var totaltip = (currentValue * feildValue! / 100)

            TipLabel.text = "$" + String(totaltip)
            
            sliderlabel.text = "Tip(" + String(currentValue) + "%)"
            
            var totalAmount = (feildValue! + totaltip)
            
                TotalLabel.text = "$" + String(totalAmount)
        }
        else {
            let alertController = UIAlertController(title: "iOScreator", message:
                "Hello, world!", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            

        }
        }

    func dismissKeyboard() {
    view.endEditing(true)
    }
        

    }

