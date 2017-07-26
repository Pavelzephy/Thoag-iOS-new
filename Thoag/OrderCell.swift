//
//  OrderCell.swift
//  Thoag
//
//  Created by Ashraf Ul Alam Tusher on 7/18/17.
//  Copyright © 2017 Ashraf Ul Alam Tusher. All rights reserved.
//

import UIKit

class OrderCell: UITableViewCell {

    //connections
    @IBOutlet weak var orderDateTxtLbl: UILabel!
    @IBOutlet weak var orderIdTxtLbl: UILabel!
    @IBOutlet weak var orderStatusTxtLbl: UILabel!
    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var restaurantDescriptionTxtLbl: UILabel!
    @IBOutlet weak var restaurantRatingTxtLbl: UILabel!
    @IBOutlet weak var orderTotalTxtLbl: UILabel!
    
    @IBOutlet weak var orderTracking: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
