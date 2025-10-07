//
//  ViewController.swift
//  FindMyAge
//
//  Created by Mahfooz0123 on 10/5/25.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var laShowAge: UILabel!
    @IBOutlet weak var txtYearOfBirth: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BuFindAge(_ sender: Any) {
        getAge()
        
    }
    
    func getAge(){
        // Fire click  of the button
        let yearOfBirth = Int(txtYearOfBirth.text!)
        //get Current Year
        let date = Date()
        let calender = Calendar.current
        let year = calender.component(.year, from: date)
        let personAge = year - yearOfBirth!
        laShowAge.text = "Your age is \(personAge) years."
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Fire some click of return keyboard
        getAge()
        self.view.endEditing(true)
        return true
    }
    
}

