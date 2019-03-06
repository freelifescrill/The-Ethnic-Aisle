//
//  MapViewController.swift
//  TheEthnicGroup
//
//  Created by DJ Sellers/ Rashii Henry on 7/21/18.
//  Copyright © 2018 DJ Sellers. All rights reserved.
//

import UIKit
import MapKit
import Hero
//Import CityMapSDK

//Use the map pins to display information about the business. Ethnicty, Owners Name, Hours Operation
//See if its possible adjust map colors


class MapViewController: UIViewController, UISearchBarDelegate, MKMapViewDelegate {
    
    //*****GET USERS CURRENT LOCATION FOR INITIAL LOCATION
    let regionRadius: CLLocationDistance = 1000
    let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Customize The SearchBar
        customizeSearchBar()
        
        //Customize the NavigationMenu
        //self.navigationController?.navigationBar.addSubview(UIBarButtonItem()
        //self.navigationController?.navigationItem.leftBarButtonItem.
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(OpenMenu))
        //Center The Map
        centerMapOnLocation(location: initialLocation)
        
        
    }
    
    func customizeSearchBar(){
        searchBar.barTintColor = UIColor(red: 229/255, green: 213/255, blue: 157/255, alpha: 0)
        searchBar.backgroundColor = UIColor(red: 0/255, green: 74/255, blue: 103/255, alpha: 0)
        
    }
    
    @objc func OpenMenu(){
        //will display a menu upon clicking map pins
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //call this function to center the Users Location.
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion.init(center: location.coordinate,
                                                                  latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    func mapView(_ mapView: MKMapView, regionWillChangeAnimated animated: Bool) {
        self.searchBar.alpha = 0.2

    }
    
    func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
        self.searchBar.alpha = 0.2
        
    }
    func mapView(_ mapView: MKMapView,
                 regionDidChangeAnimated animated: Bool){
       
    }
    
    
    /*
     // MARK: - Search Bar
     
     */
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
    }
    
    func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
        
        return true
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
    }
    
    func searchBarResultsListButtonClicked(_ searchBar: UISearchBar) {
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
    }
    
    
    /*
     // MARK: - Map Delegate Methods
     
     */
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
