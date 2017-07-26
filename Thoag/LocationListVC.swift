//
//  LocationListVC.swift
//  Thoag
//
//  Created by user on 7/17/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit

class LocationListVC: UIViewController, UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate {
    
    //connections
    @IBOutlet weak var locationTable: UITableView!
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        
        self.navigationController?.popToRootViewController(animated: true)
        
        
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        
        let vc = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "PickYourAddressTVC") as! PickYourAddressTVC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationTable.tableFooterView = UIView()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return 2
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath)
        cell.textLabel?.text = "Al Mursalat, Riyadh"
        return cell
        
        
    }
    
}
