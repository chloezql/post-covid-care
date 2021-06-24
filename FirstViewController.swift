//
//  FirstViewController.swift
//  HealthCareLocatorSDKDemo
//
//  Created by sunshine on 6/24/21.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var profileButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Utilities.styleHollowButton(profileButton)
        
        // Do any additional setup after loading the view.
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
