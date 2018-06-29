//
//  DateViewController.swift
//  pickingout
//
//  Created by Eunju Tak on 2018. 5. 7..
//  Copyright © 2018년 Eunju Tak. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {
    
//    var randomDateIndex = 0
//    let dateArray = [""]
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var dateNameLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setCustomBackImage()
        setCustomTitle()
//        let dateTitleImages = [UIImage(named: "")!]
//
//        imgView.animationImages = dateTitleImages
//        imgView.animationDuration = 10
//        dateNameLabel.text = "오늘의 데이트는?"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func setCustomBackImage(){
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        
    }
    
    func setCustomTitle(){
        let label1 = UILabel()
        label1.text = "Today Date"
        label1.font = UIFont(name: "DXAbtStd-B", size: 30)
        label1.textColor = UIColor.flatMint()
        label1.sizeToFit()
        navigationItem.titleView = label1
    }
    
    
    @IBAction func pressedButton(_ sender: Any) {
//        startButton.setTitle("Stop", for: .normal)
//        if imgView.isAnimating {
//            imgView.stopAnimating()
//            randomDateIndex = Int(arc4random_uniform(100))
//            imgView.image = UIImage(named: dateArray[randomDateIndex])
//            dateNameLabel.text = dateArray[randomDateIndex]
//            startButton.setTitle("Start", for: UIControlState.normal)
//
//        }else {
//            imgView.startAnimating()
//            startButton.setTitle("Stop", for: UIControlState.normal)
//            dateNameLabel.text = "오늘의 데이트는?!"
//        }
//
        
    }
    
    
}
