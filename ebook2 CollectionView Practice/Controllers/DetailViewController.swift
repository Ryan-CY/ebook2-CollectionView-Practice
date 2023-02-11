//
//  DetailViewController.swift
//  ebook2 CollectionView Practice
//
//  Created by Ryan Lin on 2023/2/11.
//

import UIKit

class DetailViewController: UIViewController {
    
    let shops: [Shop]
    let section: Int
    let row: Int
    
    init?(coder: NSCoder, shops: [Shop], section: Int, row: Int) {
        self.shops = shops
        self.section = section
        self.row = row
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detailChineseLabel: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var locationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        configutation()
    }
    
    func updateUI() {
        let attraction = shops[section].attractions[row]
        
        detailImageView.image = UIImage(named: attraction.photo)
        detailNameLabel.text = attraction.name
        detailChineseLabel.text = attraction.chineseName
        detailTextView.text = attraction.intro
        locationLabel.text = attraction.location
        
        detailTextView.isEditable = false
    }
    
    func configutation() {
        detailNameLabel.frame = CGRect(x: 25, y: 100, width: 140, height: 44)
        detailNameLabel.numberOfLines = 0
        detailNameLabel.textAlignment = .center
        detailNameLabel.textColor = .orange
        detailNameLabel.font = .systemFont(ofSize: 18, weight: .semibold)
        
        detailChineseLabel.frame = CGRect(x: 180, y: 100, width: 140, height: 44)
        detailChineseLabel.textAlignment = .left
        detailChineseLabel.textColor = .orange
        detailChineseLabel.font = .systemFont(ofSize: 18, weight: .medium)
        
        detailImageView.frame = CGRect(x: 10, y: 150, width: 370, height: 300)
        detailImageView.contentMode = .scaleAspectFit
        
        detailTextView.frame = CGRect(x: 50, y: 480, width: 290, height: 190)
        detailTextView.font = .systemFont(ofSize: 16)
        detailTextView.backgroundColor = .clear
        
        locationLabel.frame = CGRect(x: 75, y: 720, width: 250, height: 30)
        locationLabel.textAlignment = .center
    }
}
