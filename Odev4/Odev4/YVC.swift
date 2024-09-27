//
//  YVC.swift
//  Odev4
//
//  Created by Kadir Yılmaz on 27.09.2024.
//

import UIKit

class YVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func buttonGeri(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
