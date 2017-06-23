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
        
        mainView = MainView(frame: CGRect.init(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        
        self.view.addSubview(mainView)
        
        mainView.setLayout(view: view)
        mainView.isUserInteractionEnabled = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

