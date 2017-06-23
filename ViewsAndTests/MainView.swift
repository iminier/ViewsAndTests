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
    
    var topImage: UIImageView!
    var rowTwoLeft: UIImageView!
    var rowTwoRight: UIImageView!
    var rowThreeLeft: UIImageView!
    var rowThreeRight: UIImageView!
    var bottomRow: UIImageView!

    var testButton: UIButton!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        topImage = UIImageView(frame: frame)
        topImage.backgroundColor = UIColor.gray
        topImage.layer.borderColor = UIColor.white.cgColor
        topImage.layer.borderWidth = 2
        topImage.isUserInteractionEnabled = false
        
        self.addSubview(topImage)
        
        rowTwoLeft = UIImageView(frame: frame)
        rowTwoLeft.backgroundColor = UIColor.blue
        rowTwoLeft.layer.borderColor = UIColor.white.cgColor
        rowTwoLeft.layer.borderWidth = 2
        
        self.addSubview(rowTwoLeft)
        
        rowTwoRight = UIImageView(frame: frame)
        rowTwoRight.backgroundColor = UIColor.orange
        rowTwoRight.layer.borderColor = UIColor.white.cgColor
        rowTwoRight.layer.borderWidth = 2
        
        self.addSubview(rowTwoRight)
        
        rowThreeRight = UIImageView(frame: frame)
        rowThreeRight.backgroundColor = UIColor.red
        rowThreeRight.layer.borderColor = UIColor.white.cgColor
        rowThreeRight.layer.borderWidth = 2
        
        self.addSubview(rowThreeRight)
        
        bottomRow = UIImageView(frame: frame)
        bottomRow.backgroundColor = UIColor.purple
        bottomRow.layer.borderColor = UIColor.white.cgColor
        bottomRow.layer.borderWidth = 2
        
        self.addSubview(bottomRow)
        
        rowThreeLeft = UIImageView(frame: frame)
        rowThreeLeft.backgroundColor = UIColor.yellow
        rowThreeLeft.layer.borderColor = UIColor.white.cgColor
        rowThreeLeft.layer.borderWidth = 2
        
        self.addSubview(rowThreeLeft)
        
        testButton = UIButton(frame: frame)
        testButton.backgroundColor = UIColor.clear
        testButton.setTitle("TEST", for: .normal)
        testButton.titleLabel?.textAlignment = .center
        testButton.titleLabel?.textColor = UIColor.white
        testButton.layer.borderColor = UIColor.white.cgColor
        testButton.layer.borderWidth = 2
        testButton.addTarget(self, action: #selector(MainView.butAct), for: .touchUpInside)
        
        self.addSubview(testButton)
    }
    
    func setLayout(view: UIView) {
        
        print(view.frame.width)
        topImage.size = CGSize(width: view.frame.width * 0.70, height: 40)
        topImage.center.x = view.frame.width / 2
        topImage.center.y = view.frame.height * 0.30
        
        rowTwoLeft.size = CGSize(width: topImage.width * 0.60, height: topImage.height * 2)
        rowTwoLeft.pin.below(of: topImage, aligned: .left)
        
        rowTwoRight.size = CGSize(width: topImage.width * 0.40, height: topImage.height * 2)
        rowTwoRight.pin.below(of: topImage, aligned: .right)
        
        rowThreeLeft.size = CGSize(width: topImage.width * 0.50, height: topImage.height * 2)
        rowThreeLeft.pin.below(of: rowTwoLeft, aligned: .left)
        
        rowThreeRight.size = CGSize(width: topImage.width * 0.50, height: topImage.height * 2)
        rowThreeRight.pin.below(of: rowTwoRight, aligned: .right)
        
        bottomRow.size = CGSize(width: topImage.width, height: topImage.height)
        bottomRow.pin.below(of: rowThreeLeft, aligned: .left)
        
        testButton.size.width = view.width / 2
        testButton.size.height = 40
        testButton.pin.below(of: bottomRow, aligned: .center).marginTop(20)
        
    }
    
    func butAct(sender: UIButton) {
        print("something")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
