//
//  HomePageViewController.swift
//  HealthCareLocatorSDKDemo
//
//  Created by sunshine on 6/25/21.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var healthReportView: CardView!
    
    @IBOutlet weak var findHCPbutton: UIButton!
    @IBOutlet weak var detailButton: UIButton!
    @IBOutlet var addItemView: UIView!
    
    @IBOutlet weak var recordView: UIView!
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    
    var effect:UIVisualEffect!
    
    @IBOutlet weak var reportSameBtn: UIButton!
    
    @IBOutlet weak var reportNewBtn: UIButton!
    
    
    let swiftColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
    
    let orangeColor = UIColor(red: 255/255, green: 166/255, blue: 86/255, alpha: 1)

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        healthReportView.layer.shadowColor = swiftColor.cgColor
        healthReportView.layer.shadowOpacity = 1
        healthReportView.layer.shadowOffset = .zero
        healthReportView.layer.shadowRadius = 10
        healthReportView.layer.cornerRadius = 10
        recordView.layer.shadowColor = swiftColor.cgColor
       recordView.layer.shadowOpacity = 1
        recordView.layer.shadowOffset = .zero
        recordView.layer.shadowRadius = 10
        recordView.layer.cornerRadius = 10
        
//        Utilities.styleHollowButton(detailButton)
//        Utilities.styleHollowButton(findHCPbutton)
        
        
        detailButton.layer.borderWidth = 1
        detailButton.layer.borderColor = orangeColor.cgColor
        detailButton.layer.cornerRadius = 15.0
        detailButton.tintColor =  UIColor.init(red: 255/255, green: 166/255, blue: 86/255, alpha: 1)

        findHCPbutton.layer.borderWidth = 1
        findHCPbutton.layer.borderColor = orangeColor.cgColor
        findHCPbutton.layer.cornerRadius = 15.0
        findHCPbutton.tintColor =  UIColor.init(red: 255/255, green: 166/255, blue: 86/255, alpha: 1)
        
        reportSameBtn.layer.borderWidth = 2
        reportSameBtn.layer.borderColor = orangeColor.cgColor
        reportSameBtn.layer.cornerRadius = 15.0
        reportSameBtn.tintColor =  UIColor.init(red: 255/255, green: 166/255, blue: 86/255, alpha: 1)
        
        reportNewBtn.layer.borderWidth = 2
        reportNewBtn.layer.borderColor = orangeColor.cgColor
        reportNewBtn.layer.cornerRadius = 15.0
        reportNewBtn.tintColor =  UIColor.init(red: 255/255, green: 166/255, blue: 86/255, alpha: 1)
        
        addItemView.layer.cornerRadius = 5
        addItemView.layer.borderWidth = 2
        addItemView.layer.borderColor = swiftColor.cgColor
        addItemView.layer.shadowColor = swiftColor.cgColor
        addItemView.layer.shadowOpacity = 1
        addItemView.layer.shadowOffset = .zero
        addItemView.layer.shadowRadius = 20
        
        
    }
    
    @IBAction func addItem(_ sender: Any) {
    
        animateIn()
    
    }
    
    @IBAction func dismissPopUp(_ sender: Any) {
    
        animateOut()
    }
    
    func animateIn(){
        self.view.addSubview(addItemView)
        addItemView.center = self.view.center
        addItemView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        addItemView.alpha = 0
        
        UIView.animate(withDuration: 0.4){
           // self.visualEffectView.effect = self.effect
            self.addItemView.alpha = 1
            self.addItemView.transform = CGAffineTransform.identity
        }
    }
    
    func animateOut(){
        UIView.animate(withDuration: 0.3, animations: {
            self.addItemView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.addItemView.alpha = 0
           // self.visualEffectView.effect = nil
        }){(success:Bool) in
            self.addItemView.removeFromSuperview()
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
 
extension UIColor {

    class var customGreen: UIColor {
        let darkGreen = 0x008110
        return UIColor.rgb(fromHex: darkGreen)
    }

    class func rgb(fromHex: Int) -> UIColor {

        let red =   CGFloat((fromHex & 0xFF0000) >> 16) / 0xFF
        let green = CGFloat((fromHex & 0x00FF00) >> 8) / 0xFF
        let blue =  CGFloat(fromHex & 0x0000FF) / 0xFF
        let alpha = CGFloat(1.0)

        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
