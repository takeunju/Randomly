//
//  TripListViewController.swift
//  Randomly
//
//  Created by Eunju Tak on 2018. 5. 25..
//  Copyright © 2018년 Eunju Tak. All rights reserved.
//

import UIKit


class TripListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCustomTitle()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setCustomTitle(){
        let label1 = UILabel()
        label1.text = "Where we go?"
        label1.font = UIFont(name: "DXAbtStd-B", size: 30)
        label1.textColor = UIColor.flatMint()
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
