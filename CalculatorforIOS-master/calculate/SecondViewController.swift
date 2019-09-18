//
//  SecondViewController.swift
//  calculate
//
//  Created by cagataygul on 6.11.2018.
//  Copyright © 2018 cagataygul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        label2.text = "\(array)"
        
    }
    
    @IBAction func clear(_ sender: UIButton) {
        label2.text = ""
        array.removeAll()
    }
    
    @IBAction func cikis(_ sender: Any) {
        exit(0)
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
