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
    
    func updateUI(with attraction: Attraction) {
        
        accessoryType = .disclosureIndicator
        
        shopImageView.image = UIImage(named: attraction.photo)
        nameLabel.text = attraction.name
        chineseName.text = attraction.chineseName
        
        shopImageView.frame = CGRect(x: 20, y: 10, width: 188, height: 133)
        shopImageView.contentMode = .scaleAspectFill
        
        nameLabel.frame = CGRect(x: 210, y: 40, width: 160, height: 44)
        nameLabel.numberOfLines = 0
        nameLabel.font = .systemFont(ofSize: 18, weight: .semibold)
        //nameLabel.backgroundColor = .gray
        
        chineseName.frame = CGRect(x: 210, y: 84, width: 160, height: 44)
        chineseName.numberOfLines = 0
        chineseName.font = .systemFont(ofSize: 16, weight: .medium)
        //chineseName.backgroundColor = .lightGray
        
    }

}
