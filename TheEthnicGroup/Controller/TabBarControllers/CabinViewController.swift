//
//  CabinViewController.swift
//  TheEthnicGroup
//
//  Created by DJ Sellers on 2/24/19.
//  Copyright © 2019 DJ Sellers. All rights reserved.
//

import UIKit

class CabinViewController: UIViewController, UITableViewDelegate {
    var arrayOfTweets = ["1","2","3","4","5","6","7","8","9","10","11","12","13"]
    var adBanner = UIView(frame: CGRect(x: 60, y: 60, width: 60, height: 60))
    var bannerHeight = 50.00
    
    
    @IBOutlet weak var cabinTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cabinTableView.delegate = self
        self.cabinTableView.dataSource = self as? UITableViewDataSource
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

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.cabinTableView.dequeueReusableCell(withIdentifier: "notificationCell", for: indexPath) as! NotificationFeedCellTableViewCell
        
//        cell.userNameLabel = ""
        
        //configure your cell
        
        return cell
    }
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfTweets.count
    }
    
//    func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath {
//
//    }
    
    /*
     // MARK: - Did End Displaying
     
     
     */
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
        
    }
    func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
        
    }
    
    /*
     // MARK: - View Height Per Section
     
    
     */
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return adBanner
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return adBanner
    }
    
    /*
     // MARK: - WIll Display Header/Footer - adBanner
     
     
     */
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        //add= banner
    }
}
