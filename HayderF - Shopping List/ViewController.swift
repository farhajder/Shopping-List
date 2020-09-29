//
//  ViewController.swift
//  HayderF - Shopping List
//
//  Created by Farhaj on 2/22/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var NewListButton: UIButton!
    @IBOutlet weak var NewItemButton: UIButton!
    @IBOutlet weak var AddButton: UIButton!
    @IBOutlet weak var itemOutput: UILabel!
    @IBOutlet weak var DescriptionTextField: UITextField!
    @IBOutlet weak var QuantityTextField: UITextField!
    var arrayOfItems:[String] = []

    @IBAction func NewListButtonFunc(_ sender: UIButton) {
        itemOutput.text = "No item"
        arrayOfItems = []
    }
    
    @IBAction func NewItemButtonFunc(_ sender: UIButton) {
        DescriptionTextField.text = ""
        QuantityTextField.text = ""
    }
    
    @IBAction func DescriptionTextFieldFunc(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func AddButtonFunction(_ sender: UIButton) {
        if (DescriptionTextField.text!.isEmpty) {
            if(arrayOfItems.isEmpty) {
            itemOutput.text = "No item"
            DescriptionTextField.layer.borderWidth = 1.0
            DescriptionTextField.layer.borderColor = UIColor.red.cgColor
            let title = "Description Field is Empty"
            let message = "Please Enter a Description of The Item"
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(cancelAction)
            present(alertController, animated: true, completion: nil)
            }
            else {
                DescriptionTextField.layer.borderWidth = 1.0
                DescriptionTextField.layer.borderColor = UIColor.red.cgColor
                let title = "Description Field is Empty"
                let message = "Please Enter a Description of The Item"
                let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(cancelAction)
                present(alertController, animated: true, completion: nil)
            }
        }
        else if(QuantityTextField.text!.isEmpty) {
            if(arrayOfItems.isEmpty) {
            itemOutput.text = "No item"
            QuantityTextField.layer.borderWidth = 1.0
            QuantityTextField.layer.borderColor = UIColor.red.cgColor
            let title = "Quantity Field is Empty"
            let message = "Please Enter the Quantity of Item"
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(cancelAction)
            present(alertController, animated: true, completion: nil)
            }
            else {
                QuantityTextField.layer.borderWidth = 1.0
                QuantityTextField.layer.borderColor = UIColor.red.cgColor
                let title = "Quantity Field is Empty"
                let message = "Please Enter the Quantity of Item"
                let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(cancelAction)
                present(alertController, animated: true, completion: nil)
            }
        }
        else {
            itemOutput.text = "\(QuantityTextField.text! + "x " + DescriptionTextField.text!)"
            arrayOfItems.append(itemOutput.text!)
            itemOutput.text = arrayOfItems.joined(separator: "\n")
            DescriptionTextField.layer.borderColor = UIColor.gray.cgColor
            DescriptionTextField.layer.borderWidth = 0.0
            QuantityTextField.layer.borderColor = UIColor.gray.cgColor
            QuantityTextField.layer.borderWidth = 0.0
            DescriptionTextField.text = ""
            QuantityTextField.text = ""
        }
    }
    
    
}

