//
//  OrderHistoryVC.swift
//  Thoag
//
//  Created by Ashraf Ul Alam Tusher on 7/17/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit

class OrderHistoryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //connection
    @IBOutlet weak var orderTable: UITableView!
    
    
    
    var restaurantNames = ["Halal food & restaurants", "Jumobo kitchen and food", "Masala Kitchen"]
    var restaurantDes = ["Kabsa, Harissa, Maqluba", "Kabsa, Harissa, Maqluba, Saleeg, Basbousa, Markook", "Harissa, Maqluba, Saleeg, Basbousa, Markook"]
    var restaurantRating = ["4.5", "4.1", "5.0"]
    var orderPrice = ["99.99 SAR", "105.08 SAR", "56.00 SAR"]
    var orderdate = ["12/08/2017 02:19pm", "18/07/2017 09:29am", "08/07/2017 12:07am"]
    var orderStat = ["Pending", "Canceled", "Delivered"]
    var restaurantLogo = ["Res1Logo", "Res2Logo", "Res3Logo"]
    var orderId = ["089756259086745", "089756259086745", "089756259086745"]
    var ordertracking = ["Tracking", "", "Tracking"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        orderTable.tableFooterView = UIView()
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
        
        return restaurantDes.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell", for: indexPath) as! OrderCell
        cell.restaurantName.text = restaurantNames[indexPath.row]
        cell.restaurantDescriptionTxtLbl.text = restaurantDes[indexPath.row]
        cell.orderIdTxtLbl.text = restaurantDes[indexPath.row]
        cell.orderStatusTxtLbl.text = orderStat[indexPath.row]
        cell.restaurantImage.image = UIImage(named: restaurantLogo[indexPath.row])
        cell.orderDateTxtLbl.text = orderdate[indexPath.row]
        cell.orderIdTxtLbl.text = orderId[indexPath.row]
        
        return cell
        
    }

    
    
}
