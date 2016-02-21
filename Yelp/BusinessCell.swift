//
//  BusinessCell.swift
//  Yelp
//
//  Created by Devon Maguire on 2/19/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var businessImage: UIImageView!
    @IBOutlet weak var businessName: UILabel!
    @IBOutlet weak var starRating: UIImageView!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var foodType: UILabel!
    @IBOutlet weak var reviewNum: UILabel!
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var money: UILabel!
    
    var business: Business! {
        didSet {
            businessImage.setImageWithURL(business.imageURL!)
            businessName.text = business.name
            starRating.setImageWithURL(business.ratingImageURL!)
            address.text = business.address
            foodType.text = business.categories
            reviewNum.text = "\(business.reviewCount) Reviews"
            distance.text = business.distance
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        businessImage.layer.cornerRadius = 3
        businessImage.clipsToBounds = true
        
        businessName.preferredMaxLayoutWidth = businessName.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        businessName.preferredMaxLayoutWidth = businessName.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
