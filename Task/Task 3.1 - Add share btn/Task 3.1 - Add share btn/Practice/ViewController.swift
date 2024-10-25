//
//  ViewController.swift
//  Practice
//
//  Created by Touchzing media on 21/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var images: [String] = ["Bigmac","Bacon_Clubhouse_Burger","Double quarter pounder with cheese burger","Quater pound with cheese","Cheese_Burger","Hamburger","Bigmac","Bacon_Clubhouse_Burger","Double quarter pounder with cheese burger","Quater pound with cheese","Cheese_Burger","Hamburger"]
    
    var Burgertype:[String] = ["Bigmac","Bacon_Clubhouse_Burger","Double quarter pounder with cheese burger","Quater pound with cheese","Cheese_Burger","Hamburger","Bigmac","Bacon_Clubhouse_Burger","Double quarter pounder with cheese burger","Quater pound with cheese","Cheese_Burger","Hamburger"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
}

extension ViewController: 
    UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Burgertype.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for:indexPath) as! CollectionViewCell
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.cornerRadius = 25
        cell.Titlelbl.text = Burgertype[indexPath.row]
        cell.imageView.image = UIImage(named: images[indexPath.row])
        return cell
    
    }
	
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-10)/2
        return CGSize(width: size, height: size)

    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
//        vc.vc1_img = UIImage(named:images[indexPath.row])
        vc.vc1_lbl = Burgertype[indexPath.row]
        print("\(Burgertype[indexPath.row]) movie selected.....")
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
}



