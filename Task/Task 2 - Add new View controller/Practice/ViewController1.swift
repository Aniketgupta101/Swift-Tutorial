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


}
