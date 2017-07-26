//
//  RestaurantCell.swift
//  Thoag
//
//  Created by Ashraf Ul Alam Tusher on 7/18/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit

class RestaurantCell: UITableViewCell {

    //connections
    @IBOutlet weak var restaurantLogo: UIImageView!
    @IBOutlet weak var restauRantName: UILabel!
    @IBOutlet weak var restarantRating: UILabel!
    @IBOutlet weak var deliveryType: UILabel!
    @IBOutlet weak var minOrder: UILabel!
    @IBOutlet weak var orderTime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
