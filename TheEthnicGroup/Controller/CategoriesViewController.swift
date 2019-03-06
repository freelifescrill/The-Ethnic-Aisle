//
//  CategoriesViewController.swift
//  TheEthnicGroup
//
//  Created by DJ Sellers/Rashii Henry on 7/21/18.
//  Copyright © 2018 DJ Sellers. All rights reserved.
//

import UIKit
import Hero

class CategoriesViewController: UIViewController, UICollectionViewDelegate, UISearchBarDelegate  {
    var minHeight = 50.00
    var minWidth = 100.00
    let heroID = "0000"
    
    /*
     // MARK: - Subviews / ViewDidLoad
     
     */
    @IBOutlet weak var heroBtn: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        heroBtn.hero.isEnabled = true
//        heroBtn.hero.id = heroID
        self.navigationItem.title = "Browse";

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
//        heroBtn.hero.isEnabled = true
//        heroBtn.hero.id = heroID
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
/*
 // MARK: - CollectionView Methods
 
 */
    
    
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let _ : UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BusinessCell", for: indexPath)
        
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        
    }
    func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    

/*
 // MARK: - Touches Began

 */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.performSegue(withIdentifier: "ethnicitySegue", sender: self)
    }

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
