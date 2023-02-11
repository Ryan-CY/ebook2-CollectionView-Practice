//
//  ShopTableViewCell.swift
//  ebook2 CollectionView Practice
//
//  Created by Ryan Lin on 2023/2/11.
//

import UIKit

class ShopTableViewCell: UITableViewCell {
    
    @IBOutlet weak var shopImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var chineseName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
