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
        // Do any additional setup after loading the view, typically from a nib.
        
        //mainView = MainView(frame: CGRect(x: view.bounds.width, y: view.bounds.height, width: 20, height: 20))
        mainView = MainView(frame: CGRect.init(x: view.bounds.width, y: view.bounds.height, width: 200, height: 200))
        self.view.addSubview(mainView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

