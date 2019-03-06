//
//  ViewController.swift
//  TheEthnicGroup
//
//  Created by DJ Sellers on 5/4/18.
//  Created by Rashii Henry on 5/4/18.
//  Copyright © 2018 DJ Sellers. All rights reserved.
//

import UIKit
import Hero



class CategoriesCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var businessDescriptionLabel: UILabel!
    @IBOutlet weak var businessTypeLabel: UILabel!
    
    var names = ["Adult Daycare", "Attorneys and Consultants", "Auto Detail", "Beauty and Cosmetology", "Child Care", "Church", "Counseling", "Creatives and Event Planning", "Dentistry", "Doctors", "Entertainment", "Fashion Models", "Finance", "Fitness", "Funeral Homes", "Graphic Design", "Health Clubs and Spas", "Laundry and Dry Cleaning", "Mass Media", "Mens Grooming", "Online Shopping", "Physical Therapy", "Property Maintenance", "Real Estate", "Restaurants", "Security", "Staffing Agency", "Storage", "Tattoos and Piercings", "Travel Services", "Visual Art", "Writing and Publishing"]
    var descriptions = ["Tap to view more info.", "View More"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Collectionview Methods
        collectionView?.contentInset = UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
        self.collectionView?.dataSource = self
        self.collectionView?.delegate = self
        
        //Hero Methods
        self.hero.isEnabled = true
        self.collectionView.hero.id = "Ethnic"
        
        
        
            // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let businessCell = collectionView.dequeueReusableCell(withReuseIdentifier: "businessCell", for: indexPath) as! BusinessCollectionViewCell
        businessCell.businessTypeLabel.text = names[indexPath.row]
        //businessCell.businessDescLabel.text = descriptions[0] // will make flexible when more descriptions available.
        businessCell.backgroundColor = UIColor(red: 229/255, green: 213/255, blue: 157/255, alpha: 1.0)
        businessCell.layer.cornerRadius = 10
        
        collectionView.hero.modifiers = [.cascade]
        for cell in names {
            
            //cell.hero.modifiers = [.fade, .scale(0.5)]
        }
        
        return businessCell
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if (indexPath.row == 0 || indexPath.row > 0){
            self.performSegue(withIdentifier: "descriptionSegue", sender: self)
        }

    }
    
    override func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
    }
    
    override func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        
    }
    
    
    /*
     // MARK: - CollectionView Setup
     
            //All view handling for collection View
    
    */
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       return CGSize(width: collectionView.frame.size.width / 2.35 , height: 151)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        //space between cell and frame border.
        return 3.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        //spacing between each cell block.
        return 10.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
       return UIEdgeInsets(top: 50.0, left: 10.0, bottom: 10.0, right: 10.0)
    }
    
    
    
}

