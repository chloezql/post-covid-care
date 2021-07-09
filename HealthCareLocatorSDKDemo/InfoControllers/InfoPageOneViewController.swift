//
//  InfoPageOneViewController.swift
//  HealthCareLocatorSDKDemo
//
//  Created by sunshine on 6/24/21.
//

import UIKit

class InfoPageOneViewController: UIViewController {
    
    
    @IBOutlet weak var conditionView: UICollectionView!
    
    
    @IBOutlet weak var genderPicker: UITextField!
    
    let gender = ["Female","Male","Other","Prefer not to say"]
    let preconditions = ["Mental Disorders","Depression","Alcohol/Drug Abuse","Diabetes mellitus","Cancer","Kidney Disease","Coronary Artery/Heart","Hemophilia"]

    
    var genderPickerView = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        genderPicker.inputView = genderPickerView
        
        genderPickerView.delegate = self
        genderPickerView.dataSource = self
        conditionView.delegate = self
        conditionView.dataSource = self
        
    }
    

    
}
extension InfoPageOneViewController:UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gender[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderPicker.text = gender[row]
    }
    
}

extension InfoPageOneViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return preconditions.count 
    }
 
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = conditionView.dequeueReusableCell(withReuseIdentifier: "conditionCell", for: indexPath)as! CollectionViewCell

        
        cell.contentView.layer.cornerRadius = 5.0
        cell.contentView.layer.masksToBounds = true
                
        // Set masks to bounds to false to avoid the shadow
        // from being clipped to the corner radius
        cell.configure(with: preconditions[indexPath.row])

        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = conditionView.dequeueReusableCell(withReuseIdentifier: "conditionCell", for: indexPath)as! CollectionViewCell
            cell.layer.borderWidth = 2
            cell.layer.borderColor = UIColor.orange.cgColor
       
       }
       
       func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = conditionView.dequeueReusableCell(withReuseIdentifier: "conditionCell", for: indexPath)as! CollectionViewCell
            cell.layer.borderWidth = 2
            cell.layer.borderColor = UIColor.clear.cgColor
       }
    
    
   
    
    
    
    
    
    
    
    
}
