//
//  ViewController.swift
//  Segue, Alert, & Action Sheet
//
//  Created by Rasyid Respati Wiriaatmaja on 28/01/20.
//  Copyright © 2020 rasyidrw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnToPage3(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "page3")
        show(destination, sender: nil)
        
    }
    
    @IBAction func btnToPage3WithData(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "page3") as! ThirdViewController
        destination.nameData = "Rasyid Respati W"
        destination.ageData = 22
        
        show(destination, sender: nil)
        
    }
    
    @IBAction func btnActionField(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Action Sheet", message: "Example", preferredStyle: .actionSheet)
        
        let def = UIAlertAction(title: "default", style: .default) { (UIAlertAction) in
            print("btn alert default")
        }
        
        let dest = UIAlertAction(title: "destructive", style: .destructive) { (UIAlertAction) in
            print("btn alert destructive")
        }
        
        alert.addAction(def)
        alert.addAction(dest)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func btnAlertTextField(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Alert", message: "with text field", preferredStyle: .alert)
        
        let def = UIAlertAction(title: "default", style: .default) { (UIAlertAction) in
            
            let textField = alert.textFields?.first
            let text = textField?.text
            
            print(text!)
        }
        
        let dest = UIAlertAction(title: "destructive", style: .destructive) { (UIAlertAction) in
            print("btn alert destructive")
        }
        
        alert.addTextField { (textFieldAlert) in
            textFieldAlert.placeholder = "Add text here"
        }
        
        alert.addAction(def)
        alert.addAction(dest)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
}

