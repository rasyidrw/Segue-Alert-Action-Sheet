//
//  ThirdViewController.swift
//  Segue, Alert, & Action Sheet
//
//  Created by Rasyid Respati Wiriaatmaja on 28/01/20.
//  Copyright © 2020 rasyidrw. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var nameData : String?
    var ageData : Int?

    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblResult.text = "\(nameData ?? "empty"), Age: \(ageData ?? 0)"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
