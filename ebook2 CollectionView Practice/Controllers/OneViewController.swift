//
//  OneViewController.swift
//  ebook2 CollectionView Practice
//
//  Created by Ryan Lin on 2023/2/10.
//

import UIKit

class OneViewController: UIViewController {
    
    @IBOutlet weak var pageIndicator: UIPageControl!
    @IBOutlet weak var jewelCollectionView: UICollectionView!
    
    let jewels: [Spot]
    let newItem: Int
    
    init?(coder: NSCoder, jewels: [Spot], newItem: Int) {
        self.jewels = jewels
        self.newItem = newItem
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension OneViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        jewels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(OneCollectionViewCell.self)", for: indexPath) as? OneCollectionViewCell else {fatalError("dequeueReusableCell OneCollectionViewCell Failed")}
        
        let newIndex = (newItem + indexPath.item + jewels.count) % jewels.count
        
        cell.oneImageView.image = UIImage(named: jewels[newIndex].name)
        
        print("newItem:\(newItem), indexPath.item:\(indexPath.item), jewels.count:\(jewels.count), newIndex:\(newIndex)")
        return cell
    }
}
//記得要連delegate才會動作
extension OneViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x/scrollView.bounds.width
        pageIndicator.currentPage = Int(pageNumber)
    }
}
