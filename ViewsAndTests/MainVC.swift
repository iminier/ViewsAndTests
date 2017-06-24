//
//  ViewController.swift
//  ViewsAndTests
//
//  Created by Ivan Minier on 6/20/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var mainView: MainView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView = MainView(frame: CGRect.init(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        //mainView.tag = 1
        self.view.backgroundColor = UIColor.lightGray
        self.view.addSubview(mainView)
        
        mainView.setLayout(view: view)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

