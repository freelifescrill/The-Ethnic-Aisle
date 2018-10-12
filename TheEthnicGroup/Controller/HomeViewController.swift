//
//  ViewController.swift
//  TheEthnicGroup
//
//  Created by DJ Sellers on 5/4/18.
//  Created by Rashii Henry on 5/4/18.
//  Copyright © 2018 DJ Sellers. All rights reserved.
//

import UIKit


class HomeViewController: UICollectionViewController {

    var names = ["Adult Daycare", "Attorneys and Consultants", ",Auto Detail", "Beauty and Cosmetology", "Child Care", "Church", "Counseling", "Creatives and Event Planning", "Dentistry", "Doctors", "Entertainment", "Fashion Models", "Finance", "Fitness", "Funeral Homes", "Graphic Design", "Health Clubs and Spas", "Laundry and Dry Cleaning", "Mass Media", "Mens Grooming", "Online Shopping", "Physical Therapy", "Property Maintenance", "Real Estate", "Restaurants", "Security", "Staffing Agency", "Storage", "Tattoos and Piercings", "Travel Services", "Visual Art", "Writing and Publishing"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
       let businessCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        businessCell.backgroundColor = UIColor(red: 229/255, green: 213/255, blue: 157/255, alpha: 1.0)

        
        return businessCell
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        
    }
    
    
}

