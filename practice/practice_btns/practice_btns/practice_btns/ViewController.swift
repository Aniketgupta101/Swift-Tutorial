//
//  ViewController.swift
//  practice_btns
//
//  Created by Touchzing media on 25/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var images: UIImageView!
    
    @IBAction func sharebtn(_ sender: Any) {
        print("Share button tapped")
        
        let sample_text = "Here is the text"
        
        guard let sample_img = UIImage(named: "goku") else {
            print("Image not found")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [sample_text, sample_img], applicationActivities: nil)
        
        if let popoverPresentationController = vc.popoverPresentationController {
            popoverPresentationController.sourceView = self.view
            popoverPresentationController.sourceRect = self.view.bounds
        }
        
        self.present(vc, animated: true, completion: nil)
    }
}
