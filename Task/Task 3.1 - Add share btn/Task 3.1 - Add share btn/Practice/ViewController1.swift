//
//  ViewController1.swift
//  Practice
//
//  Created by Touchzing media on 23/10/24.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var vc1_img = String()
    var vc1_lbl = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.text = vc1_lbl
        imageView.image = UIImage(named: vc1_img)
    }
    
    
    @IBAction func sharebtn(_ sender: UIButton) {
        print("Share button tapped")
        
        DispatchQueue.main.async { [self] in
            let images = UIImage(named: vc1_img)
            let activityItems: [Any] = [images!, vc1_lbl]
            let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
            
            if let popoverPresentationController = activityVC.popoverPresentationController {
                popoverPresentationController.sourceView = self.view
                popoverPresentationController.sourceRect = self.view.bounds
            }
            self.present(activityVC, animated: true, completion: nil)
        }
        
       
    }
    

}
