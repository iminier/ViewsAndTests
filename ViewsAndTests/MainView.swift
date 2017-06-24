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
    
    private let frameBorderWidth: CGFloat = 2
    private let frameBackgroundColor: UIColor = UIColor.clear
    private let frameBorderColor: CGColor = UIColor.white.cgColor
    
    var topImage: UIImageView!
    var rowTwoLeft: UIImageView!
    var rowTwoRight: UIImageView!
    var rowThreeLeft: UIImageView!
    var rowThreeRight: UIImageView!
    var bottomRow: UIImageView!

    var testButton: UIButton!
    var moreButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.tag = 1
        
        topImage = UIImageView(frame: frame)
        topImage.backgroundColor = frameBackgroundColor
        topImage.layer.borderColor = frameBorderColor
        topImage.layer.borderWidth = frameBorderWidth
        
        rowTwoLeft = UIImageView(frame: frame)
        rowTwoLeft.backgroundColor = frameBackgroundColor
        rowTwoLeft.layer.borderColor = frameBorderColor
        rowTwoLeft.layer.borderWidth = frameBorderWidth
        
        rowTwoRight = UIImageView(frame: frame)
        rowTwoRight.backgroundColor = frameBackgroundColor
        rowTwoRight.layer.borderColor = frameBorderColor
        rowTwoRight.layer.borderWidth = frameBorderWidth
        
        rowThreeLeft = UIImageView(frame: frame)
        rowThreeLeft.backgroundColor = frameBackgroundColor
        rowThreeLeft.layer.borderColor = frameBorderColor
        rowThreeLeft.layer.borderWidth = frameBorderWidth
        
        rowThreeRight = UIImageView(frame: frame)
        rowThreeRight.backgroundColor = frameBackgroundColor
        rowThreeRight.layer.borderColor = frameBorderColor
        rowThreeRight.layer.borderWidth = frameBorderWidth
        
        bottomRow = UIImageView(frame: frame)
        bottomRow.backgroundColor = frameBackgroundColor
        bottomRow.layer.borderColor = frameBorderColor
        bottomRow.layer.borderWidth = frameBorderWidth
        
        testButton = UIButton(frame: frame)
        testButton.backgroundColor = frameBackgroundColor
        testButton.setTitle("TEST", for: .normal)
        testButton.titleLabel?.textAlignment = .center
        testButton.titleLabel?.textColor = UIColor.white
        testButton.layer.borderColor = frameBorderColor
        testButton.layer.borderWidth = frameBorderWidth
        testButton.layer.shadowOpacity = 0.7
        testButton.layer.shadowOffset = CGSize(width: 2.0, height: 1.0)
        testButton.layer.shadowRadius = 4.0
        testButton.addTarget(self, action: #selector(testButAction), for: .touchUpInside)
        
        moreButton = UIButton(frame: frame)
        moreButton.backgroundColor = frameBackgroundColor
        moreButton.setTitle("MORE", for: .normal)
        moreButton.titleLabel?.textAlignment = .center
        moreButton.titleLabel?.textColor = UIColor.white
        moreButton.layer.borderColor = frameBorderColor
        moreButton.layer.borderWidth = frameBorderWidth
        moreButton.layer.shadowOpacity = 0.7
        moreButton.layer.shadowOffset = CGSize(width: 2.0, height: 1.0)
        moreButton.layer.shadowRadius = 4.0
        moreButton.addTarget(self, action: #selector(moreButAction), for: .touchUpInside)
        
        // Any order here works as long as the layout is set in proper order in setLayout()
        
        self.addSubview(topImage)
        self.addSubview(rowTwoLeft)
        self.addSubview(rowTwoRight)
        self.addSubview(rowThreeLeft)
        self.addSubview(rowThreeRight)
        self.addSubview(bottomRow)
        self.addSubview(testButton)
        self.addSubview(moreButton)
 
        
    }
    
    func setLayout(view: UIView) {
        
        topImage.size = CGSize(width: view.frame.width * 0.70, height: 50)
        topImage.center.x = view.width / 2
        topImage.center.y = view.height * 0.20
        
        rowTwoLeft.size = CGSize(width: view.width * 0.40, height: topImage.height * 2)
        rowTwoLeft.pin.below(of: topImage, aligned: .left)
        
        rowTwoRight.size = CGSize(width: view.width * 0.30, height: topImage.height * 2)
        rowTwoRight.pin.below(of: topImage, aligned: .right)
        
        rowThreeLeft.size = CGSize(width: topImage.width * 0.50, height: topImage.height * 1.5)
        rowThreeLeft.pin.below(of: rowTwoLeft, aligned: .left)
        
        rowThreeRight.size = CGSize(width: topImage.width * 0.50, height: topImage.height * 1.5)
        rowThreeRight.pin.below(of: rowTwoRight, aligned: .right)
        
        bottomRow.size = CGSize(width: topImage.width, height: topImage.height)
        bottomRow.pin.below(of: rowThreeLeft, aligned: .left)
        
        testButton.size.width = view.width / 2
        testButton.size.height = 40
        testButton.pin.below(of: bottomRow, aligned: .center).marginTop(20)
        
        moreButton.size.width = testButton.size.width
        moreButton.size.height = testButton.size.height
        moreButton.pin.below(of: testButton, aligned: .center).marginTop(20)
        
        //topImage.pin.margin(0, 0, 4, 0)
        
    }
    
    func testButAction(sender: UIButton) -> String {
        print("Test button was pressed")
        return "Test button was pressed"
    }
    
    func moreButAction(sender: UIButton) {
        print("More button was pressed")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
