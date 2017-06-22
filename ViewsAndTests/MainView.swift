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
    var yogaTwo: UIImageView!
    var yogaThree: UIImageView!
    var yogaFour: UIImageView!
    var yogaFive: UIImageView!
    var newTest: UIImageView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        yogaImage = UIImageView(frame: frame)
        yogaImage.backgroundColor = UIColor.gray
        yogaImage.layer.borderColor = UIColor.white.cgColor
        yogaImage.layer.borderWidth = 2
        
        self.addSubview(yogaImage)
        
        yogaTwo = UIImageView(frame: frame)
        yogaTwo.backgroundColor = UIColor.blue
        yogaTwo.layer.borderColor = UIColor.white.cgColor
        yogaTwo.layer.borderWidth = 2
        
        self.addSubview(yogaTwo)
        
        yogaThree = UIImageView(frame: frame)
        yogaThree.backgroundColor = UIColor.orange
        yogaThree.layer.borderColor = UIColor.white.cgColor
        yogaThree.layer.borderWidth = 2
        
        self.addSubview(yogaThree)
        
        newTest = UIImageView(frame: frame)
        newTest.backgroundColor = UIColor.orange
        newTest.layer.borderColor = UIColor.white.cgColor
        newTest.layer.borderWidth = 2
        
        
        
        yogaFour = UIImageView(frame: frame)
        yogaFour.backgroundColor = UIColor.blue
        yogaFour.layer.backgroundColor = UIColor.white.cgColor
        yogaFour.layer.borderWidth = 2
        
        yogaFive = UIImageView(frame: frame)
        yogaFive.backgroundColor = UIColor.yellow
        yogaFive.layer.borderColor = UIColor.white.cgColor
        yogaFive.layer.borderWidth = 2
        
        self.addSubview(yogaFour)
        self.addSubview(newTest)
        self.addSubview(yogaFive)
    }
    
    func setLayout(view: UIView) {
        
        print(view.frame.width)
        yogaImage.center.x = view.frame.width / 2
        yogaImage.center.y = view.frame.height * 0.30
        
        
        yogaTwo.size = CGSize(width: yogaImage.width * 0.60, height: yogaImage.height)
        yogaTwo.pin.below(of: yogaImage, aligned: .left)
        
        yogaThree.size = CGSize(width: yogaImage.width * 0.40, height: yogaImage.height / 2)
        yogaThree.pin.below(of: yogaImage, aligned: .right)
        
        yogaFour.size = CGSize(width: yogaImage.width * 0.40, height: yogaImage.height / 2)
        yogaFour.pin.below(of: yogaThree, aligned: .center)
        
        newTest.size = CGSize(width: yogaImage.width * 0.40, height: yogaImage.height / 2)
        newTest.pin.below(of: yogaThree, aligned: .center)

        yogaFive.size = CGSize(width: yogaImage.width * 0.50, height: yogaImage.height * 2)
        yogaFive.pin.below(of: newTest, aligned: .left)
        
        print(newTest.backgroundColor!)
        print(yogaTwo.backgroundColor!)
        print(yogaThree.backgroundColor!)
        print(yogaFour.backgroundColor!)
        print(yogaFive.backgroundColor!)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
