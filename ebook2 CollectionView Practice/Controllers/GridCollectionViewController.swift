//
//  GridCollectionViewController.swift
//  ebook2 CollectionView Practice
//
//  Created by Ryan Lin on 2023/2/10.
//

import UIKit

//private let reuseIdentifier = "Cell"

class GridCollectionViewController: UICollectionViewController {
    
    let jewelSpots: [Spot] = [
        Spot(name: "jewel1", intro: "1"),
        Spot(name: "jewel2", intro: "2"),
        Spot(name: "jewel3", intro: "3"),
        Spot(name: "jewel4", intro: "4"),
        Spot(name: "jewel5", intro: "5"),
        Spot(name: "jewel6", intro: "6"),
        Spot(name: "jewel7", intro: "7"),
        Spot(name: "jewel8", intro: "8"),
        Spot(name: "jewel9", intro: "9"),
        Spot(name: "jewel10", intro: "10"),
        Spot(name: "jewel11", intro: "11"),
        Spot(name: "jewel12", intro: "12"),
        Spot(name: "jewel13", intro: "13"),
        Spot(name: "jewel14", intro: "14"),
        Spot(name: "jewel15", intro: "15"),
        Spot(name: "Canopy Park", intro: "Canopy Park")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Do any additional setup after loading the view.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
    // MARK: UICollectionViewDataSource
    
    @IBSegueAction func showBigPhoto(_ coder: NSCoder) -> OneViewController? {
        
        guard let item = collectionView.indexPathsForSelectedItems?.first?.item else {return nil}
        
        return OneViewController(coder: coder, jewels: jewelSpots, newItem: item)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return jewelSpots.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(GridCollectionViewCell.self)", for: indexPath) as! GridCollectionViewCell
        
        cell.GridImageView.image = UIImage(named: jewelSpots[indexPath.item].name)
        
        return cell
    }
    
    // MARK: UICollectionViewDelegate
    
    /*
     // Uncomment this method to specify if the specified item should be highlighted during tracking
     override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment this method to specify if the specified item should be selected
     override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
     override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
     
     }
     */
    
}
