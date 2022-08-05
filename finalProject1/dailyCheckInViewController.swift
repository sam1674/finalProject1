//
//  dailyCheckInViewController.swift
//  finalProject1
//
//  Created by Sameera Narayan on 8/5/22.
//

import UIKit

class dailyCheckInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var color = ""
    @IBAction func orangeButton(_ sender: Any) {
        color = "orange"
    }
    
    @IBAction func greenButton(_ sender: Any) {
        color = "green"
    }
    
    @IBAction func purpleButton(_ sender: Any) {
        color = "purple"
    }
    @IBAction func submitButton(_ sender: Any) {
        if color == "orange" {
            self.performSegue(withIdentifier: "orangeSegue", sender: nil)
        } else if color == "green" {
            self.performSegue(withIdentifier: "greenSegue", sender: nil)
        } else if color == "purple" {
            self.performSegue(withIdentifier: "purpleSegue", sender: nil)
        }
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
