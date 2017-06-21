//
//  MainView.swift
//  ViewsAndTests
//
//  Created by Ivan Minier on 6/20/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit
import PinLayout

class MainView: UIView {
    var yogaImage: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        yogaImage = UIImageView(frame: frame)
        yogaImage.backgroundColor = UIColor.gray
        
        
        
        yogaImage.layer.borderColor = UIColor.white.cgColor
        yogaImage.layer.borderWidth = 2
        
        self.addSubview(yogaImage)
        
        yogaImage.size.width = frame.width
        yogaImage.size.height = frame.height
        
        print(frame.maxX)
        print(frame.maxY)
        
        yogaImage.pin.vCenter(600)
        yogaImage.pin.hCenter(900)
        //yogaImage.pin.topCenter().top(20)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
