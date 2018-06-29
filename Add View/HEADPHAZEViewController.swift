//
//  AddViewController.swift
//  Randomly
//
//  Created by Eunju Tak on 2018. 5. 13..
//  Copyright © 2018년 Eunju Tak. All rights reserved.
//

import UIKit
import WebKit
import SVProgressHUD

class HEADPHAZEViewController: UIViewController {
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let hpURL = "https://soundcloud.com/headphazemusic"
        let myURL = URL(string:hpURL)
        let myRequest = URLRequest(url:myURL!)
        myWebView.load(myRequest)
        myWebView.isUserInteractionEnabled = true
        }
  
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    @IBAction func stopPressed(_ sender: Any) {
        myWebView.stopLoading()
    }
   
    @IBAction func resreshPressed(_ sender: Any) {
        myWebView.reload()
    }
    @IBAction func forwardPressed(_ sender: Any) {
        myWebView.goForward()
    }
    @IBAction func backPressed(_ sender: Any) {
        myWebView.goBack()
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
