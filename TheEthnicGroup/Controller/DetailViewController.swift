//
//  DetailViewController.swift
//  TheEthnicGroup
//
//  Created by DJ Sellers on 1/30/19.
//  Copyright © 2019 DJ Sellers. All rights reserved.
//

import UIKit
//mport Hero


class DetailViewController: UIViewController {

    @IBOutlet weak var backImg: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true
        backImg.hero.id = "Ethnic"

        // Do any additional setup after loading the view.
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
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
