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

    override func viewDidLoad() {
    super.viewDidLoad()

    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

    view.addGestureRecognizer(tap)



    }

    func dismissKeyboard() {
    view.endEditing(true)
    }

    }

