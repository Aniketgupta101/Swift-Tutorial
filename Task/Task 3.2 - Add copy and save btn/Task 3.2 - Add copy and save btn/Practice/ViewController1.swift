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
    
    @IBAction func savebtn(_ sender: Any) {
        guard let image = imageView.image else {
            print("No image available to save")
            return
        }
        
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }

    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            print("Error saving image: \(error.localizedDescription)")
        } else {
            print("Image saved successfully!")
            let alert = UIAlertController(title: "Image Saved", message: "The image has been saved to your device.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func copybtn(_ sender: Any) {
        let pasteboard = UIPasteboard.general
        
//        guard let image = imageView.image else {
//            print("No image available to copy")
//            return
//        }
        
        pasteboard.items = [[:]]
        pasteboard.string = vc1_lbl
        print("Text copied: \(vc1_lbl)")
//        
//        pasteboard.image = image
//        print("Image copied to clipboard")
    }
    
    @IBAction func sharebtn(_ sender: UIButton) {
        print("Share button tapped")
        
        DispatchQueue.main.async { [self] in
            guard let image = imageView.image else {
                print("No image available to share")
                return
            }
            let activityItems: [Any] = [image, vc1_lbl]
            let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)

            if let popoverPresentationController = activityVC.popoverPresentationController {
                popoverPresentationController.sourceView = self.view
                popoverPresentationController.sourceRect = self.view.bounds
            }
            self.present(activityVC, animated: true, completion: nil)
        }
    }   
}
