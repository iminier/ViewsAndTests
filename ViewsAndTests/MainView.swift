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
    
    var but: UIButton!
    
    
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
        newTest.backgroundColor = UIColor.red
        newTest.layer.borderColor = UIColor.white.cgColor
        newTest.layer.borderWidth = 2
        
        self.addSubview(newTest)
        
        yogaFour = UIImageView(frame: frame)
        yogaFour.backgroundColor = UIColor.purple
        yogaFour.layer.borderColor = UIColor.white.cgColor
        yogaFour.layer.borderWidth = 2
        
        self.addSubview(yogaFour)
        
        yogaFive = UIImageView(frame: frame)
        yogaFive.backgroundColor = UIColor.yellow
        yogaFive.layer.borderColor = UIColor.white.cgColor
        yogaFive.layer.borderWidth = 2
        
        self.addSubview(yogaFive)
        
        but = UIButton(frame: frame)
        but.backgroundColor = UIColor.clear
        but.setTitle("TEST", for: .normal)
        but.titleLabel?.textAlignment = .center
        but.titleLabel?.textColor = UIColor.white
        but.layer.borderColor = UIColor.white.cgColor
        but.layer.borderWidth = 2
        but.addTarget(self, action: #selector(MainView.butAct), for: .touchUpInside)
        
        self.addSubview(but)
    }
    
    func setLayout(view: UIView) {
        
        print(view.frame.width)
        yogaImage.center.x = view.frame.width / 2
        yogaImage.center.y = view.frame.height * 0.30
        
        yogaTwo.size = CGSize(width: yogaImage.width * 0.60, height: yogaImage.height * 2)
        yogaTwo.pin.below(of: yogaImage, aligned: .left)
        
        yogaThree.size = CGSize(width: yogaImage.width * 0.40, height: yogaImage.height * 2)
        yogaThree.pin.below(of: yogaImage, aligned: .right)
        
        newTest.size = CGSize(width: yogaImage.width * 0.50, height: yogaImage.height * 2)
        newTest.pin.below(of: yogaThree, aligned: .right)

        yogaFive.size = CGSize(width: yogaImage.width * 0.50, height: yogaImage.height * 2)
        yogaFive.pin.below(of: yogaTwo, aligned: .left)
        
        yogaFour.size = CGSize(width: yogaImage.width, height: yogaImage.height)
        yogaFour.pin.below(of: yogaFive, aligned: .left)
        
        but.size.width = view.width / 2
        but.size.height = 40
        but.center.x = view.width / 2
        but.center.y = view.height * 0.80
        
    }
    
    func butAct(sender: UIButton) {
        print("something")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
