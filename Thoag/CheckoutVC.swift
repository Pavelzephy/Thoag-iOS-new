//
//  CheckoutVC.swift
//  Thoag
//
//  Created by Ashraf Ul Alam Tusher on 7/21/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit

class CheckoutVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //connection
    @IBOutlet weak var checkoutTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        checkoutTable.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
    
        return 1

        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
                let cell = tableView.dequeueReusableCell(withIdentifier: "addressCell", for: indexPath)
                
                // Configure the cell...
                return cell
            
        }else if indexPath.section == 1{
            
                let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath)
                
                // Configure the cell...
                return cell
            
            
        }else if indexPath.section == 2{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "insResCell", for: indexPath)
            
            // Configure the cell...
            return cell

        
        }else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "summaryCell", for: indexPath)
            
            // Configure the cell...
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0{

                
                return 140

            
        }else if indexPath.section == 1{
            
                
                return 50
            
        }else if indexPath.section == 2{
            
            
            return 50
            
        } else {
            
            return 90
        
        }
        
    }
}
