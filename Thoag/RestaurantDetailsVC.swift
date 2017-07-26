//
//  RestaurantDetailsVC.swift
//  Thoag
//
//  Created by Ashraf Ul Alam Tusher on 7/19/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit

class RestaurantDetailsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var activeBtn = 0
    var menus = ["Most selling", "Family bundle Offer", "Combo", "Kudu Meals", "Desserts", "Drinks"]
    var infoTitle = ["Area", "Status", "Cuisines", "opening hours", "Delivery Time", "Minimum Order", "Delivery Fee", "Pre-order", "Payment Options"]
    var infoInfos = ["Al-Shamsan", "Open", "American, Breakfast, Sandwiches", "7.30Am - 1.00AM", "60 mins", "6 items", "5.00", "NO", "Cash, Sadat"]
    
    
    //connections
    @IBOutlet weak var menuBtn: UIButton!
    
    @IBOutlet weak var reviewBtn: UIButton!
    
    @IBOutlet weak var infoBtn: UIButton!
    
    
    @IBAction func menuBtnTapped(_ sender: Any) {
        activeBtn = 0
        menuBtn.setTitleColor(UIColor.black, for: .normal)
        reviewBtn.setTitleColor(UIColor.lightGray, for: .normal)
        infoBtn.setTitleColor(UIColor.lightGray, for: .normal)
        restaurantDetailsTable.reloadData()
        
    }
    @IBAction func reviewBtnTappedAction(_ sender: Any) {
        activeBtn = 1
        menuBtn.setTitleColor(UIColor.lightGray, for: .normal)
        reviewBtn.setTitleColor(UIColor.black, for: .normal)
        infoBtn.setTitleColor(UIColor.lightGray, for: .normal)
        restaurantDetailsTable.reloadData()
    }
    
    @IBAction func infoBtnTapped(_ sender: Any) {
        activeBtn = 2
        menuBtn.setTitleColor(UIColor.lightGray, for: .normal)
        reviewBtn.setTitleColor(UIColor.lightGray, for: .normal)
        infoBtn.setTitleColor(UIColor.black, for: .normal)
        restaurantDetailsTable.reloadData()
    }
    @IBOutlet weak var restaurantDetailsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.setTitleColor(UIColor.black, for: .normal)
        restaurantDetailsTable.tableFooterView = UIView()
        // Do any additional setup after loading the view.
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
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if activeBtn == 0{
            
            return menus.count
            
        }else if activeBtn == 1{
            
            return 6
            
        }else {
            
            return 9
            
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if activeBtn == 0{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
            cell.textLabel?.text = menus[indexPath.row]
            return cell
            
        }else if activeBtn == 1{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "reviewCell", for: indexPath)
            return cell
            
        }else{
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath)
            cell.textLabel?.text = infoTitle[indexPath.row]
            cell.detailTextLabel?.text = infoInfos[indexPath.row]
            return cell
            
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if activeBtn == 0{
            return 44
        }else if activeBtn == 1{
            return 100
        }else{
            return 44
        }
    }


}
