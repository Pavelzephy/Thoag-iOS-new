//
//  FoodDetailsVC.swift
//  Thoag
//
//  Created by Ashraf Ul Alam Tusher on 7/20/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit
import PopupDialog


class FoodDetailsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var optionTitle = ["What do you want to add?", "What would you like to remove?", "What do you like your drink?", "Double the chiken?", "Double the rice?"]
    
    @IBAction func addtoCartTapped(_ sender: Any) {
        
        let title = "Food added to the cart?"
        let message = ""
        let popup = PopupDialog(title: title, message: message)
        let buttonOne = CancelButton(title: "Continue") {
            
        }
        let buttonTwo = DefaultButton(title: "Go to cart") {
            let vc = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "CartVC") as! CartVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
        popup.addButtons([buttonOne, buttonTwo])
        self.present(popup, animated: true, completion: nil)
   
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if section == 0{
        
            return 1
        
        }else if section == 1{
        
            return 1
            
        }else{
        
            return optionTitle.count
        
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "foodImageCell", for: indexPath)
            return cell

            
        }else if indexPath.section == 1{
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "foodDetailsCell", for: indexPath)
            return cell

            
        }else {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "optionCell", for: indexPath)
            cell.textLabel?.text = optionTitle[indexPath.row]
            cell.detailTextLabel?.text = "(optional)"
            return cell
        
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0{
            
            return 180
            
        }else if indexPath.section == 1{
            
            return 110
            
            
        }else {
            
            return 44
            
        }
        
    }

}
