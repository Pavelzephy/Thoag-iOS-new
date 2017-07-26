//
//  MasterIntroVC.swift
//  Thoag
//
//  Created by Ashraf Ul Alam Tusher on 7/17/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit


class MasterIntroVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
    
        
        if UserDefaults.standard.value(forKey: "isLocationSet") as? Bool == nil ||  UserDefaults.standard.value(forKey: "isLocationSet") as! Bool == false {
            
            let vc = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "ChildIntroVC") as! ChildIntroVC
            self.navigationController?.pushViewController(vc, animated: true)
            
        } else{
            
            let vc = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "MaintabBarcontroller") as! MaintabBarcontroller
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
        
    }
    
}
