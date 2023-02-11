//
//  IntroViewController.swift
//  ebook2 CollectionView Practice
//
//  Created by Ryan Lin on 2023/2/11.
//

import UIKit

class IntroViewController: UIViewController {
    
    @IBOutlet weak var introTextView: UITextView!
    
    let intro: String
    
    init?(coder:NSCoder, intro: String) {
        self.intro = intro
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introTextView.text = intro
        
        introTextView.frame = CGRect(x: 30, y: 446, width: 335, height: 220)
        introTextView.font = .systemFont(ofSize: 17)
        introTextView.backgroundColor = .clear
        introTextView.textColor = UIColor(red: 0, green: 84/255, blue: 147/255, alpha: 1)
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
