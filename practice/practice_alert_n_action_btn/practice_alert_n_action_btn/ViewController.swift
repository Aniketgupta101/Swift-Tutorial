//
//  ViewController.swift
//  practice_alert_n_action_btn
//
//  Created by Touchzing media on 23/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func alert(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "My title here", message: "My message here", preferredStyle: .alert)
        let cancelbutton = UIAlertAction(title: "Cancel Button", style: .cancel) { action in
            print("cancel button")
    
        }
        let default1button = UIAlertAction(title: "Default Button", style: .default) { action in
            print("default button")
        
        }
        let default2button = UIAlertAction(title: "Default Button", style: .default) { action in
            print("default button")
        
        }
        let default3button = UIAlertAction(title: "Default Button", style: .default) { action in
            print("default button")
        
        }
        let destructivebutton = UIAlertAction(title: "Destructive Button", style: .destructive) { action in
            print("destructive button")
    
        }
        alert.addAction(cancelbutton)
        alert.addAction(default1button)
        alert.addAction(default2button)
        alert.addAction(default3button)
        alert.addAction(destructivebutton)
        present(alert, animated: true, completion: nil)
            
    }
    @IBAction func action(_ sender: UIButton) {
        
        let sheet = UIAlertController(title: "My title here", message: "My message here", preferredStyle: .actionSheet)
        let cancelbutton = UIAlertAction(title: "Cancel Button", style: .cancel) { action in
            print("cancel button")
    
        }
        let default1button = UIAlertAction(title: "Default Button", style: .default) { action in
            print("default button")
        
        }
        let default2button = UIAlertAction(title: "Default Button", style: .default) { action in
            print("default button")
        
        }
        let default3button = UIAlertAction(title: "Default Button", style: .default) { action in
            print("default button")
        
        }
        let destructivebutton = UIAlertAction(title: "Destructive Button", style: .destructive) { action in
            print("destructive button")
    
        }
        sheet.addAction(cancelbutton)
        sheet.addAction(default1button)
        sheet.addAction(default2button)
        sheet.addAction(default3button)
        sheet.addAction(destructivebutton)
        present(sheet, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

