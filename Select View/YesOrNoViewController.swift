//
//  YesOrNoViewController.swift
//  Randomly
//
//  Created by Eunju Tak on 2018. 5. 13..
//  Copyright © 2018년 Eunju Tak. All rights reserved.
//

import UIKit

class YesOrNoViewController: UIViewController {
    
    var randomAnswerIndex = 0
    let answerArray = ["no4","no5","no6","no7","no8","no9","no10","no11","no12","no13","no14","no15","no16","no17","no18","no19","yes1","yes2","yes3","yes4","yes5","yes6","yes7","yes8","yes9","yes10","yes11","yes12","yes13","yes14","yes15","yes16","yes17","yes18","yes19","yes20"]
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCustomBackImage()
        setCustomTitle()
        
        let answerImages = [UIImage(named: "yes1")!,
                            UIImage(named: "no4")!,
                            UIImage(named: "yes4")!,
                            UIImage(named: "no5")!,
                            UIImage(named: "yes5")!,
                            UIImage(named: "no6")!,
                            UIImage(named: "yes6")!,
                            UIImage(named: "no7")!,
                            UIImage(named: "yes2")!,
                            UIImage(named: "yes7")!,
                            UIImage(named: "no8")!,
                            UIImage(named: "yes8")!,
                            UIImage(named: "no9")!,
                            UIImage(named: "yes9")!,
                            UIImage(named: "no10")!,
                            UIImage(named: "yes10")!,
                            UIImage(named: "no11")!,
                            UIImage(named: "yes11")!,
                            UIImage(named: "no12")!,
                            UIImage(named: "yes12")!,
                            UIImage(named: "no13")!,
                            UIImage(named: "yes13")!,
                            UIImage(named: "no14")!,
                            UIImage(named: "yes14")!,
                            UIImage(named: "no15")!,
                            UIImage(named: "yes15")!,
                            UIImage(named: "no16")!,
                            UIImage(named: "yes16")!,
                            UIImage(named: "no17")!,
                            UIImage(named: "yes3")!,
                            UIImage(named: "yes17")!,
                            UIImage(named: "no18")!,
                            UIImage(named: "yes18")!,
                            UIImage(named: "no19")!,
                            UIImage(named: "yes19")!,
                            UIImage(named: "yes20")!]
        
        imgView.animationImages = answerImages
        imgView.animationDuration = 3
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func pressedButton(_ sender: Any) {
        imgView.backgroundColor = .clear
        if imgView.isAnimating{
            imgView.stopAnimating()
            startButton.setTitle("Start", for: UIControlState.normal)
            randomAnswerIndex = Int(arc4random_uniform(36))
            imgView.image = UIImage(named: "\(answerArray[randomAnswerIndex])")
        }else{
            imgView.startAnimating()
            startButton.setTitle("Stop", for: UIControlState.normal)
        }
        
    }
    
    func setCustomBackImage(){
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        
    }
    
    func setCustomTitle(){
        let label1 = UILabel()
        label1.text = "Yes Or No"
        label1.font = UIFont(name: "DXAbtStd-B", size: 30)
        label1.textColor = UIColor.flatMint()
        label1.sizeToFit()
        navigationItem.titleView = label1
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
