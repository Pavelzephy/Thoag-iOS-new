//
//  RestaurantsListVC.swift
//  Thoag
//
//  Created by Ashraf Ul Alam Tusher on 7/18/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit

class RestaurantsListVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    var restaurantNames = ["Halal food & restaurants", "Jumobo kitchen and food", "Masala Kitchen"]
    var restaurantDes = ["Kabsa, Harissa, Maqluba", "Kabsa, Harissa, Maqluba, Saleeg, Basbousa, Markook", "Harissa, Maqluba, Saleeg, Basbousa, Markook"]
    var restaurantRating = ["4.5(1056)", "4.1(453)", "5.0(143)"]
    var minOrder = ["Min: 3", "Min: 2", "Min: 2"]
    var orderTime = ["Avg: 60mins", "Avg: 20mins", "Avg: 25mins"]
    var orderStat = ["Pending", "Canceled", "Delivered"]
    var restaurantLogo = ["Res1Logo", "Res2Logo", "Res3Logo"]
    
    //conections
    @IBOutlet weak var restaurantTable: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restaurantTable.tableFooterView = UIView()
        let button =  UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        button.setTitleColor(.red, for: .normal)
        button.setTitle("Al-Qusour", for: .normal)
        button.addTarget(self, action: #selector(self.clickOnButton), for: .touchUpInside)
        self.navigationItem.titleView = button

    }

    func clickOnButton(button: UIButton) {
        
        isComingfromRrestaurantVC = true
        let vc = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "FindNearbyRestaurantVC") as! FindNearbyRestaurantVC
        self.navigationController?.pushViewController(vc, animated: true)
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if section == 0{
            
            return 1
            
        }else{
            
            return restaurantDes.count
            
        }

    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath) as! locationCell
            cell.sortLbl.text = "Sort"
            cell.sortIcon.image = UIImage(named: "SrtIcon")
            return cell
            
        }else{
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell", for: indexPath) as! RestaurantCell
            
            
            cell.restauRantName.text = restaurantNames[indexPath.row]
            cell.restarantRating.text = restaurantRating[indexPath.row]
            cell.deliveryType.text = orderTime[indexPath.row]
            cell.minOrder.text = minOrder[indexPath.row]
            cell.restaurantLogo.image = UIImage(named: restaurantLogo[indexPath.row])
            return cell
        
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 44
        }else{
            return 100
        }
    }

    
    

}
