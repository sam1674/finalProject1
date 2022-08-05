//
//  cameraCalendarViewController.swift
//  finalProject1
//
//  Created by Sameera Narayan on 8/4/22.
//

import UIKit

class cameraCalendarViewController: UIViewController,  UIImagePickerControllerDelegate,
    UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController ()
    @IBOutlet weak var imageDisplayed: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseFromLibraryTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true,
            completion:nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage { imageDisplayed.image = selectedImage}
            
            imagePicker.dismiss(animated:true, completion:nil)
        }
}
