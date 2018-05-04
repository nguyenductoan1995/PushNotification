//
//  ViewController.swift
//  PushNotification
//
//  Created by NguyenDucToan on 5/4/18.
//  Copyright © 2018 NguyenDucToan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBAction func datePicker(_ sender: Any) {
        
    }
    
    @IBAction func push(_ sender: Any) {
        let delegate = UIApplication.shared.delegate as? AppDelegate
        delegate?.pushNotifications(inSeconds: 5){
            (succes) in
            if succes {
                print("done")
            }
            else{
                print("failed")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

