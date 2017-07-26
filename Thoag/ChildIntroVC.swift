//
//  ChildIntroVC.swift
//  Thoag
//
//  Created by Ashraf Ul Alam Tusher on 7/17/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit

class ChildIntroVC: UIViewController{
    
    
    //connection
    @IBAction func getStartedTapped(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "FindNearbyRestaurantVC") as! FindNearbyRestaurantVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.set(false, forKey: "firstTimeUser")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
