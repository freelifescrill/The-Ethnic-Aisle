//
//  TabBarViewController.swift
//  TheEthnicGroup
//
//  Created by DJ Sellers/Rashii Henry on 7/21/18.
//  Copyright © 2018 DJ Sellers. All rights reserved.
//

import UIKit


class TabBarViewController: UITabBarController {
    
    var tabbarIteam = UITabBarItem()
    
    
    
    // MARK: - swiped
    @objc func swiped(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .left {
            if (self.tabBarController?.selectedIndex)! < 2
            { // set here  your total tabs
                self.tabBarController?.selectedIndex += 1
            }
        } else if gesture.direction == .right {
            if (self.tabBarController?.selectedIndex)! > 0 {
                self.tabBarController?.selectedIndex -= 1
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //UITabBarItem.appearance().
        //Do any design customization
        customizeAppearance()
    }
    override func viewDidAppear(_ animated: Bool) {
        //Handle Swipe Gestures
        
       
        // below code create swipe gestures function
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action:  #selector(swiped))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
    }

/*
 // MARK: - Tab Bar Design
 
 */
    
    func customizeAppearance(){
        self.tabBar.barTintColor = UIColor(red: 96/255, green: 79/255, blue: 23/255, alpha: 1.0) // goldish-brown color..
        self.tabBar.tintColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1.0) //??? decent enough for now.. will eventually be an icon image.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
    /*
     // MARK: - Extension
     
     
     */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
    

}



