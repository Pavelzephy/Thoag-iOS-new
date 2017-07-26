//
//  SearchVC.swift
//  Thoag
//
//  Created by user on 7/17/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit

class SearchVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    //connections
    @IBOutlet weak var searchTable: UITableView!
    
    // veriables
    var foodType = ["Kabsa", "Harissa", "Maqluba", "Saleeg", "Basbousa", "Markook", "Masgouf", "Kleicha", "Muhallebi", "Haneeth", "Mexican"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTable.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return foodType.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchResultCell", for: indexPath) as! searchResultCell
        cell.searchResult.text = foodType[indexPath.row]
        return cell
        
    }

}
