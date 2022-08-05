//
//  breathingGuideViewController.swift
//  finalProject1
//
//  Created by Sameera Narayan on 8/4/22.
//

import UIKit

class breathingGuideViewController: UIViewController {
    @IBOutlet weak var gifView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        gifView.loadGif(name: "IMG_0097")
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
