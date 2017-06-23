//
//  ViewController.swift
//  ViewsAndTests
//
//  Created by Ivan Minier on 6/20/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mainView: MainView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView = MainView(frame: CGRect.init(x: 0, y: 0, width: view.frame.width * 0.70, height: 40))
        //self.addChildViewController(mainView)
        self.view.addSubview(mainView)
        mainView.isUserInteractionEnabled = true
        mainView.setLayout(view: view)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

