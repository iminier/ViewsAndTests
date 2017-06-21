//
//  MainView.swift
//  ViewsAndTests
//
//  Created by Ivan Minier on 6/20/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class MainView: UIView {
    var yogaImage: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        yogaImage = UIImageView(frame: frame)
        yogaImage.backgroundColor = UIColor.gray
        
        
        
        yogaImage.layer.borderColor = UIColor.white.cgColor
        yogaImage.layer.borderWidth = 2
        yogaImage.layer.cornerRadius = 5.0
        
        self.addSubview(yogaImage)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
