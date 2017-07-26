//
//  CartVC.swift
//  Thoag
//
//  Created by Ashraf Ul Alam Tusher on 7/20/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit

class CartVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var cartTable: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cartTable.tableFooterView = UIView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if section == 0 {
        
            return 1
            
        }else{
        
            return 3
            
        }
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantNameCell", for: indexPath)
            
            // Configure the cell...
            return cell
            
        }else {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
            
            // Configure the cell...
            return cell
            
        }
        

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0{
            
            return 40
            
        }else{
            
            return 130
            
            
        }
        
    }

    

}
