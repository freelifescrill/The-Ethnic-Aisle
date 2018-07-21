//
//  ViewController.swift
//  TheEthnicGroup
//
//  Created by DJ Sellers on 5/4/18.
//  Copyright © 2018 DJ Sellers. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var names = ["Adult Daycare", "Attorneys and Consultants", ",Auto Detail", "Beauty and Cosmetology", "Child Care", "Church", "Counseling", "Creatives and Event Planning", "Dentistry", "Doctors", "Entertainment", "Fashion Models", "Finance", "Fitness", "Funeral Homes", "Graphic Design", "Health Clubs and Spas", "Laundry and Dry Cleaning", "Mass Media", "Mens Grooming", "Online Shopping", "Physical Therapy", "Property Maintenance", "Real Estate", "Restaurants", "Security", "Staffing Agency", "Storage", "Tattoos and Piercings", "Travel Services", "Visual Art", "Writing and Publishing"]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func tableView(_ tableView: UITableView!, cellForRowAt indexPath: IndexPath!) -> UITableViewCell!
    {
        let cell:UITableViewCell=UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        //cell.textLabel.text="row#\(indexPath.row)"
        //cell.detailTextLabel.text="subtitle#\(indexPath.row)"
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
}

