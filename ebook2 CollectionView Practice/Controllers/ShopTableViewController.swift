//
//  ShopTableViewController.swift
//  ebook2 CollectionView Practice
//
//  Created by Ryan Lin on 2023/2/11.
//

import UIKit

class ShopTableViewController: UITableViewController {
    
    let shops: [Shop] = [
        
        Shop(name: "Attractions 景點", attractions: [
            Attraction(name: "Rain Vortex",
                       chineseName: "雨漩渦",
                       photo: "Rain Vortex",
                       intro: "進入「星耀璋宜」，最先映入眼簾的就是位於建築中央的匯豐銀行雨漩渦（HSBC Rain Vortex），世界上最高的室內瀑布，瀑布從屋頂圓形缺口處湧流而下，絢麗壯美，高達 40 米。圍繞它的是田園詩歌般的園林景觀資生堂森林谷（Shiseido Forest Valley），一座高達四層樓的室內花園森林景觀，也是新加坡規模最大的室內植物天堂。晚上時雨漩渦還會有燈光秀表演，從19:30開始一直到午夜12點，每一小時一次，別錯過囉！",
                       location: "📍LOCATION : B2 - 5F"),
            Attraction(name: "Canopy Park",
                       chineseName: "星空花園",
                       photo: "Canopy Park",
                       intro: "星空花園中的游樂設施由來自英國、法國、德國、新加坡和荷蘭的頂級設計師們聯袂打造，旅客能在鏡子迷宮（Mirror Maze）和樹籬迷宮（Hedge Maze）中摸索穿行；在宏利天空之網（Manulife Sky Nets）上自在漫步或一躍騰空，體驗幾近零重力的極限彈跳；亦可探索宏偉而獨特的奇幻滑梯（Discovery Slides）；或站在懸浮於23米高空的天懸橋（Canopy Bridge）上透過玻璃地面鳥瞰匯豐銀行雨漩渦（HSBC Rain Vortex）與資生堂森林谷（Shiseido Forest Valley）的壯觀景色。",
                       location: "📍LOCATION : 5F"),
            Attraction(name: "Canopy Bridge",
                       chineseName: "天懸橋",
                       photo: "Canopy Bridge",
                       intro: "〖天懸橋Canopy Bridge〗是一座橫跨【星空花園 Canopy Park】兩端的橋樑，這座橋樑長達 50 公尺，距離地 23 公尺，還有透明玻璃地面可以看到下方的賣場站在〖天懸橋〗上可以非常靠近【星耀樟宜】〖雨漩渦 Rain Vortex〗，是欣賞〖雨漩渦〗的最佳位置～",
                       location: "📍LOCATION : 5F"),
            Attraction(name: "Pokemon Center",
                       chineseName: "寶可夢專賣店",
                       photo: "Pokemon Center",
                       intro: "日本海外首間【寶可夢專賣店 Pokemon Center】就在樟宜機場旁的【星耀樟宜 Jewel Changi Airport】，有乘龍皮卡丘、暴鯉龍等大型公仔可以拍照，有與日本同步、超齊全的神奇寶貝絨毛玩偶、周邊商品，還有新加坡限定版的機長皮卡丘、空姐皮卡丘～超可愛又有紀念價值～神奇寶貝迷絕對不能錯過!!",
                       location: "📍LOCATION : 4F")
        ]),
        
        Shop(name: "Delicacies 美食", attractions: [
            Attraction(name: "Birds of Paradise",
                       chineseName: "Gelato Boutique ",
                       photo: "jewel9",
                       intro: "Birds of Paradise delights in creating botanical gelato, flavoured with beauty that nature has given to us – fruits, flowers, herbs, spices, nuts and pods. We draw inspiration from nature to create new, beautiful flavours and experiences. Enjoy a delicious botanically-flavoured cone at our gelato parlour.",
                       location: "📍LOCATION : #01-254"),
            Attraction(name: "SHAKE SHACK",
                       chineseName: "美國知名速食店",
                       photo: "SHAKE SHACK",
                       intro: "來自於美國紐約市的連鎖快速慢食餐廳。Shake Shack sprouted from a hot dog cart in Manhattan’s Madison Square Park created by Danny Meyer’s Union Square Hospitality Group (USHG) to support the Madison Square Park Conservancy’s first art installation. The cart was quite the success, with lines snaking out daily for three summers.In 2004 USHG won the bid to open a permanent kiosk in the Park : Shake Shack was born. This modern day “roadside” burger stand serves up the most delicious burgers, hot dogs, frozen custard, shakes, beer, wine and more. An instant neighborhood fixture, Shake Shack welcomed people from all over the city, country and world who gathered together to enjoy fresh, simple, high-quality versions of the classics in a majestic setting.The rest, as they say, is burger history.",
                       location: "📍STORE LOCATION : #02-256"),
            Attraction(name: "BURGER & LOBSTER",
                       chineseName: "來自英國的餐廳",
                       photo: "jewel4",
                       intro: "來自於英國倫敦的知名店家。Burger & Lobster Jewel is located on Jewel Changi Airport’s top floor, where diners are able to enjoy a knock-out Burger & Lobster experience served alongside spectacular views of the 40-metre high Rain Vortex, set to be the world’s tallest indoor waterfall.Our Jewel Changi Airport Restaurant menu is packed with food for everyone to enjoy. We have combined a lobster restaurant with a burger restaurant and housed it under one roof. You can enjoy juicy Nebraskan beef burgers, wild Canadian lobsters as well as our famous lobster rolls. If you fancy tasting all of our three classics, you can with our Burger & Lobster combos! We also have tasty vegan burgers, a range of delicious sides as well as a tempting desert menu.",
                       location: "📍STORE LOCATION : #05-203")
        ])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBSegueAction func showDetail(_ coder: NSCoder) -> DetailViewController? {
        
        guard let row = tableView.indexPathForSelectedRow?.row else {return nil}
        
        let section = tableView.indexPathForSelectedRow?.section
        
        return DetailViewController(coder: coder, shops: shops, section: section!, row: row)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        shops.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let shop = shops[section]
        return shop.attractions.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(ShopTableViewCell.self)", for: indexPath) as? ShopTableViewCell else {fatalError("dequeueReusableCell ShopTableViewCell Failed")}
        
        let shop = shops[indexPath.section]
        let attraction = shop.attractions[indexPath.row]
        
        cell.accessoryType = .disclosureIndicator
        
        cell.shopImageView.image = UIImage(named: attraction.photo)
        cell.nameLabel.text = attraction.name
        cell.chineseName.text = attraction.chineseName
        
        cell.shopImageView.frame = CGRect(x: 20, y: 10, width: 188, height: 133)
        cell.shopImageView.contentMode = .scaleAspectFill
        
        cell.nameLabel.frame = CGRect(x: 210, y: 40, width: 160, height: 44)
        cell.nameLabel.numberOfLines = 0
        cell.nameLabel.font = .systemFont(ofSize: 18, weight: .semibold)
        //cell.nameLabel.backgroundColor = .gray
        
        cell.chineseName.frame = CGRect(x: 210, y: 84, width: 160, height: 44)
        cell.chineseName.numberOfLines = 0
        cell.chineseName.font = .systemFont(ofSize: 16, weight: .medium)
        //cell.chineseName.backgroundColor = .lightGray
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        shops[section].name
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
