//
//  HomeViewController.swift
//  ebook2 CollectionView Practice
//
//  Created by Ryan Lin on 2023/2/11.
//

import UIKit

class HomeViewController: UIViewController {
    
    let intro: String = "星耀樟宜（英語：Jewel Changi Airport）係位於新加坡樟宜機場中以自然為主題的娛樂、零售綜合設施，連結該機場的三個航廈，從樟宜機場的1、2、3航廈都各有空中走廊直接連接星耀樟宜，所以不論你是從哪個航廈下飛機，都可以直接走過來，如果懶得走路也可以直接搭乘Skytrain。其核心為世界最高的室內瀑布雨漩渦（Rain Vortex），其週邊為階梯式森林佈置。星耀樟宜中設有花園、景點、旅館及約300家零售商店及餐廳，像是米其林一星的莆田、甘排燒味、Pokemon Center、Shake Shack、星巴克咖啡烘焙坊（Starbucks Reserve Roastery）等，共計10層樓，包括5層地上及5層地下樓層。其中景點包括高達5層樓的室內花園資生堂森林谷、最頂層的星空花園。"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func showIntro(_ coder: NSCoder) -> IntroViewController? {
        
        IntroViewController(coder: coder, intro: intro)
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
