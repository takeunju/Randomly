//
//  RoundButton.swift
//  Randomly
//
//  Created by Eunju Tak on 2018. 5. 13..
//  Copyright © 2018년 Eunju Tak. All rights reserved.
//

import UIKit
@IBDesignable

class RoundButton: UIButton {
    
    @IBInspectable var roundButton: Bool = false {
        didSet{
            if roundButton {
                layer.cornerRadius = frame.height / 2
            }
        }
    }
    override func prepareForInterfaceBuilder() {
        if roundButton{
            layer.cornerRadius = frame.height / 2
        }
    }
    


    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
